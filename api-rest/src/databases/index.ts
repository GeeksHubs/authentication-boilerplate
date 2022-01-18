import config from 'config';
import { join } from 'path';
import { ConnectionOptions } from 'typeorm';
import { dbConfig } from '@interfaces/db.interface';

const { host, user, password, database }: dbConfig = config.get('dbConfig');
const entitiesPath = join(__dirname, '../**/*.entity{.ts,.js}');
// const entitiesPath = join(__dirname, '../entities/users.entity.ts');
// console.error({ entitiesPath });

export const dbConnection: ConnectionOptions = {
  type: 'postgres',
  host: host,
  port: 5432,
  username: user,
  password: password,
  database: database,
  synchronize: true,
  logging: false,
  entities: [entitiesPath],
  migrations: [join(__dirname, '../**/*.migration{.ts,.js}')],
  subscribers: [join(__dirname, '../**/*.subscriber{.ts,.js}')],
  cli: {
    entitiesDir: 'src/entities',
    migrationsDir: 'src/migration',
    subscribersDir: 'src/subscriber',
  },
};
