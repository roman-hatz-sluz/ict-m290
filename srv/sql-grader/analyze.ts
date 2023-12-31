import { Stats } from "./models";

const parseAnalytics = (records: any[]): Stats => {
  // information_schema.COLUMNS
  const tablesResult = records[0] ?? [];
  // information_schema.table_constraints
  const constraintResults = records[1] ?? [];

  const primaryKeys: string[] = [];
  const foreignKeys: string[] = [];
  const uniqueKeys: string[] = [];
  const checkKeys: string[] = [];

  const tableNames = [
    ...new Set<string>(tablesResult.map((row: any) => row.TABLE_NAME)),
  ];
  const columnNames: string[] = tablesResult.map((row: any) => {
    return `${row.TABLE_NAME}.${row.COLUMN_NAME}`;
  });
  const columnTypes = [
    ...new Set<string>(tablesResult.map((row: any) => row.COLUMN_TYPE)),
  ];

  const tablesWithAutoIncr = [
    ...new Set<string>(
      tablesResult.map((row: any) => {
        if (row.AUTO_INCREMENT && row.TABLE_NAME) return row.TABLE_NAME;
      }),
    ),
  ];

  constraintResults.forEach((row: any) => {
    if (row.CONSTRAINT_TYPE === "PRIMARY KEY") {
      primaryKeys.push(`${row.TABLE_NAME}.${row.CONSTRAINT_NAME}`);
    } else if (row.CONSTRAINT_TYPE === "UNIQUE") {
      uniqueKeys.push(`${row.TABLE_NAME}.${row.CONSTRAINT_NAME}`);
    } else if (row.CONSTRAINT_TYPE === "FOREIGN KEY") {
      foreignKeys.push(`${row.TABLE_NAME}.${row.CONSTRAINT_NAME}`);
    } else if (row.CONSTRAINT_TYPE === "CHECK") {
      checkKeys.push(`${row.TABLE_NAME}.${row.CONSTRAINT_NAME}`);
    }
  });

  const stats: Stats = {
    tables: Array.from(tableNames).sort(),
    columnNames: Array.from(columnNames).sort(),
    columnTypes: columnTypes.sort(),
    constraints: {
      primaryKeys: primaryKeys.sort(),
      autoIncrement: tablesWithAutoIncr.sort(),
      foreignKey: foreignKeys.sort(),
      unique: uniqueKeys.sort(),
      check: checkKeys.sort(),
      other: [],
    },
  };

  return stats;
};

module.exports = {
  parseAnalytics,
};
