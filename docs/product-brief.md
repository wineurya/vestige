# Vestige — product brief

Master decisions sourced from the Proof MVP research report. **Vestige** is the working product name: one coined word evoking *timestamped move-out evidence*, not generic "proof" or a two-word brand.

## Positioning

Fastest **renter-owned evidence packet generator** — not another inspection platform for landlords.

**Wedge:** zero-install mobile web, no account to start, guided room capture, clean timestamped PDF export.

**Do not build on day one:** all-50-state law DB, AI, compare engine, cloud sync, signatures.

## Personas

| Persona | Need |
|---------|------|
| Maya, 24, first-time renter | Protect deposit without learning law |
| Alex, 31, roommate organizer | One household packet, centralized |
| Tori, 29, facing deductions | Turn existing photos into rebuttal packet |

## MVP screens

1. **Home** — Protect your deposit in one walkthrough
2. **Create report** — move-in/out, state, address, optional unit & forwarding address
3. **Room list** — Kitchen, Bathroom, Bedroom, Living Room, Hallway, Entry, Other
4. **Capture room** — wide shot, area chips, issue notes
5. **Review** — flags (missing wide shot, empty rooms)
6. **Export** — PDF download / email; delete report

## Data model (minimal)

- **Report** — type, state, address, optional tenant/forwarding address, `created_at`
- **Room** — label, order
- **Observation** — room, area tag, status, note
- **Photo** — room/observation, local blob, `captured_at`, filename

## Stack (planned)

Next.js, React, Tailwind, Zustand, Dexie/IndexedDB, react-hook-form + Zod, pdf-lib or @react-pdf/renderer, Vercel.

## Success metrics

- Activation (report + first photo): **60%**
- Export conversion: **35%+**
- Post-export "use again": **50%+ yes**

## Privacy

Local-first; strip GPS on export; no lease/ID/SSN; one-click delete report.
