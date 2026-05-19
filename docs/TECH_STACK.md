# Cavera — technical stack (2026)

Modern, local-first web app for renter deposit evidence packets. Optimized for **one successful room + one PDF export**, not enterprise inspection software.

## Counsel (skills installed)

Build and review against 30+ agent skills from [skills.sh](https://skills.sh/), including:

| Domain | Skills (examples) |
|--------|-------------------|
| React / Next | `vercel-react-best-practices`, `nextjs-app-router-patterns`, `nextjs-best-practices`, `nextjs-turbopack` |
| UI / CSS | `tailwind-design-system`, `tailwind-css-patterns`, `web-design-guidelines`, `frontend-design` |
| Quality | `accessibility`, `accessibility-compliance`, `playwright-best-practices`, `verification-before-completion` |
| Process | `brainstorming`, `writing-plans`, `executing-plans`, `systematic-debugging` |

Full install log: `docs/SKILLS_COUNSEL.md`

## Core stack

| Layer | Choice | Why |
|-------|--------|-----|
| **Framework** | [Next.js 15](https://nextjs.org/) (App Router) | Server components for marketing; client islands for camera/upload; Vercel-native |
| **Runtime** | React 19 | Matches portfolio (`wineurya/pf`) and current ecosystem |
| **Language** | TypeScript 5.x | Strict mode; shared types for Report/Room/Photo |
| **Styling** | Tailwind CSS v4 | Same as `pf`; `@theme` tokens imported from portfolio DS |
| **Components** | Custom primitives + [Base UI](https://base-ui.com/) or Radix where a11y is hard | Avoid heavy UI kits; keep bundle small for mobile web |
| **Forms** | [React Hook Form](https://react-hook-form.com/) + [Zod](https://zod.dev/) | Create-report flow; optional fields |
| **Client state** | [Zustand](https://zustand.docs.pmnd.rs/) | Report wizard, room progress, UI flags |
| **Persistence** | [Dexie](https://dexie.org/) (IndexedDB) | Local-first photos + metadata; no account on day one |
| **PDF** | [`@react-pdf/renderer`](https://react-pdf.org/) or [`pdf-lib`](https://pdf-lib.js.org/) | Timestamped export; strip GPS in pipeline |
| **Images** | Browser `File` + `createImageBitmap`; optional `browser-image-compression` | Resize before IDB; faster PDF |
| **Analytics** | [Plausible](https://plausible.io/) (optional) | Privacy-friendly; no PII |
| **Email export** | [Resend](https://resend.com/) (optional) | “Email to myself” after export |
| **Deploy** | [Vercel](https://vercel.com/) | Edge for marketing; static + serverless for app |
| **E2E** | [Playwright](https://playwright.dev/) | Critical path: start → 3 rooms → PDF |
| **CI** | GitHub Actions | Lint, typecheck, Playwright on PR |

## What we deliberately skip (v1)

| Skip | Why |
|------|-----|
| Auth / accounts on start | Research wedge: value before signup; MoveOut Shield already has native app |
| Cloud sync | Privacy + scope; fake-door after export |
| All-50-state law DB | High legal variance; link out later |
| AI summaries / OCR | Not needed for “packet generator” MVP |
| Move-in vs move-out compare | v2; avoid day-one complexity |
| React Native / Capacitor | Wedge is **zero-install mobile web** |
| Heavy ORM + Postgres | No server DB until cloud backup SKU |

## App architecture

```
app/
  (marketing)/          → landing (RSC)
  start/                → create report (client)
  report/[id]/
    rooms/              → room grid
    room/[slug]/        → capture
    review/             → flags + table
    export/             → PDF + download
lib/
  db/                   → Dexie schema
  pdf/                  → build packet
  domain/               → Report, Room, Photo types
components/
  ui/                   → Button, Input, Shell (pf tokens)
  report/               → RoomCard, PhotoGrid, Stepper
```

## Data model (unchanged from research)

- **Report** — type, state, address, forwarding address?, `createdAt`
- **Room** — label, sortOrder
- **Observation** — areaTag, status, note
- **Photo** — blob ref, `capturedAt`, filename

## Performance targets

- LCP &lt; 2.5s on marketing (static hero, no heavy JS)
- Time to first photo &lt; 30s from landing
- PDF generation &lt; 60s on mid-tier Android Chrome

## Design system source

Tokens and typography from **[wineurya/pf](https://github.com/wineurya/pf)** (`src/styles/tokens.css`), Inter as fallback. See `docs/DESIGN_DECISIONS.md`.
