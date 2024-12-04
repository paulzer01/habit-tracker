src/
├── app/ # App Router pages
│ ├── (auth)/ # Auth-related routes
│ │ ├── login/
│ │ └── signup/
│ ├── (dashboard)/ # Protected routes
│ │ ├── habits/
│ │ ├── categories/
│ │ └── settings/
│ └── layout.tsx
├── components/ # Reusable components
│ ├── ui/ # Basic UI components
│ └── habits/ # Habit-specific components
├── lib/ # Utilities
│ ├── api.ts # API client
│ └── auth.ts # Auth utilities
└── types/ # TypeScript types
