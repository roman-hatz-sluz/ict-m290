import { Stats, AnalyticsRecord } from "./models";

function parseAnalytics(sqlResult: any) {
  const analyticsData = convertAnalytics(sqlResult);
  const analyticsStats = getStats(analyticsData);
  return { data: analyticsData, stats: analyticsStats };
}

function getStats(records: AnalyticsRecord[]): Stats {
  const distinctTables: Set<string> = new Set();
  const distinctColumnTypes: Set<string> = new Set();
  const attributesPerTable: Record<string, number> = {};
  const primaryKeyEntries: Record<string, string> = {};
  const foreignKeyEntries: Record<string, string> = {};

  records.forEach((record: AnalyticsRecord) => {
    const { table_name, COLUMN_TYPE, CONSTRAINT_TYPE } = record;

    // Count distinct table names
    distinctTables.add(table_name);

    // Count entries per table name
    attributesPerTable[table_name] = (attributesPerTable[table_name] || 0) + 1;

    // Store one entry with PRIMARY KEY per table name
    if (CONSTRAINT_TYPE === "PRIMARY KEY") {
      primaryKeyEntries[table_name] = record.COLUMN_NAME;
    }
    if (CONSTRAINT_TYPE === "FOREIGN KEY") {
      foreignKeyEntries[table_name] = record.COLUMN_NAME;
    }
    // Count distinct column types
    distinctColumnTypes.add(COLUMN_TYPE);
  });

  return {
    distinctTables: Array.from(distinctTables),
    numberOfTables: distinctTables.size || 0,
    attributesPerTable,
    primaryKeyEntries,
    numberOfPrimaryKeys: Object.keys(primaryKeyEntries).length,
    foreignKeyEntries,
    numberOfForeignKeys: Object.keys(foreignKeyEntries).length,
    listOfDistinctColumnTypes: Array.from(distinctColumnTypes),
  };
}
const convertAnalytics = (records: AnalyticsRecord[]) => {
  /*
  records.sort((a, b) => {
    // First, sort by table_name
   
    const tableNameComparison = a.table_name.localeCompare(b.table_name);
    if (tableNameComparison !== 0) {
      return tableNameComparison;
    }

    // Then, sort by CONSTRAINT_TYPE if both are not null and different
    if (
      a.CONSTRAINT_TYPE &&
      b.CONSTRAINT_TYPE &&
      a.CONSTRAINT_TYPE !== b.CONSTRAINT_TYPE
    ) {
      return a.CONSTRAINT_TYPE.localeCompare(b.CONSTRAINT_TYPE);
    }

    // Lastly, sort by COLUMN_NAME
    return a.COLUMN_NAME.localeCompare(b.COLUMN_NAME);
  });
*/
  const processedRecords: any = [];
  records.map((record: AnalyticsRecord) => {
    const mappedRecord: any = {};
    for (const key in record) {
      const keyTyped = key as keyof AnalyticsRecord;
      if (record[keyTyped] !== null && keyTyped !== "DATA_TYPE") {
        mappedRecord[key] = record[keyTyped];
      }
    }
    processedRecords.push(mappedRecord);
  });

  return processedRecords;
};
module.exports = {
  parseAnalytics,
};
