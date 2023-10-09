export interface IHeaderNavItem {
  name: string
  path: string
}

export interface IMongoLayout {
  header: {
    nav_list: IHeaderNavItem[]
  }
}
