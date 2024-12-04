export const routes = {
  home: "/",
  auth: {
    login: "/login",
    signup: "/signup",
  },
  dashboard: {
    index: "/dashboard",
    habits: "/dashboard/habits",
    categories: "/dashboard/categories",
    settings: "/dashboard/settings",
  },
} as const;

type NestedKeys<T> = T extends object
  ? {
      [K in keyof T]: K extends string
        ? T[K] extends string
          ? K
          : `${K}.${NestedKeys<T[K]>}`
        : never;
    }[keyof T]
  : never;

export type AppRoute = NestedKeys<typeof routes>;
