export type AnalyticsRecord = {
  table_name: string;
  COLUMN_NAME: string;
  DATA_TYPE: string;
  COLUMN_TYPE: string;
  CONSTRAINT_TYPE?: string;
  REFERENCED_TABLE_NAME?: string;
  REFERENCED_COLUMN_NAME?: string;
};
export type Query = {
  descr: string;
  sql: string;
  validate?: Function;
};
export type GroupMapping = {
  [key: string]: {
    _TN_PRODUCTS: string;
    _TN_MAINCATEGORIES: string;

    _AN_PRODUCTS_NAME: string;
    _AN_PRODUCTS_IMAGE: string;
    _AN_PRODUCTS_MAINCAT: string;

    _AN_MAINCATEGORIES_IMAGE: string;
    _AN_MAINCATEGORIES_ID: string;
    _AN_CATEGORY_1: string;
    _AN_CATEGORY_2: string;
    _AN_CATEGORY_3: string;
    TYPE?: string;
    _AN_CATEGORY_4?: string;
  };
};
export type Stats = {
  tables: string[];
  columnNames: string[];
  columnTypes: string[];
  constraints: {
    primaryKeys: string[];
    autoIncrement: string[];
    foreignKey: string[];
    unique: string[];
    check: string[];
    other?: string[];
  };
};

/*
export type Stats = {
  distinctTables: string[];
  numberOfTables: number;
  attributesPerTable: Record<string, number>;
  primaryKeyEntries: Record<string, string>;
  numberOfPrimaryKeys: number;
  foreignKeyEntries: Record<string, string>;
  numberOfForeignKeys: number;
  listOfDistinctColumnTypes: string[];
};
*/
