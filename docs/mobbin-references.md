# Mobbin UI references — Cavera medium-fidelity wireframes

Patterns applied in `wireframes/` (May 2026). Placeholders use **12% black** (`rgba(0,0,0,0.12)`) — no text inside image blocks.

## Marketing home

| App | Screen | Pattern |
|-----|--------|---------|
| [Pipedrive](https://mobbin.com/screens/9a708696-6879-4c16-8264-2016b22bf86c) | Landing | Split hero, product UI in browser frame, primary CTA |
| [Fibery](https://mobbin.com/screens/a8eb45e6-ca91-450d-a459-5fcfc3a0325f) | Landing | Centered headline + dual CTA |
| [Deel](https://mobbin.com/screens/f6fae28c-075b-4878-beb1-63c65c0a3038) | Landing | Trust-forward subcopy, clean nav |

**Applied:** `01-home.html` — nav, split hero, browser chrome + hero placeholder

## Create report (onboarding)

| App | Screen | Pattern |
|-----|--------|---------|
| [Gusto](https://mobbin.com/screens/5964d1f6-e082-4612-a968-568b09e2cc8a) | Finish setup | Left step list + form card |
| [Mercury](https://mobbin.com/screens/e28a9181-3081-4437-a505-c80a03a3c026) | Onboarding | Top stepper + centered card form |
| [Airwallex](https://mobbin.com/screens/e80465e1-24bb-4b20-b1c4-ee401f3d421d) | Verification | Sidebar progress + main form |

**Applied:** `02-create-report.html` — app header stepper, sidebar steps, form card

## Rooms overview

| App | Screen | Pattern |
|-----|--------|---------|
| [Airbnb](https://mobbin.com/screens/e49fb845-588a-4982-9672-64589256e6d9) | Submit experience | Sidebar checklist + photo grid |
| [Remote](https://mobbin.com/screens/73aa97ad-ff05-489f-93ca-1da3e9373c46) | Onboarding | Dark sidebar + white workspace cards |

**Applied:** `03-room-list.html` — sidebar rooms, card grid with image placeholders

## Capture / upload

| App | Screen | Pattern |
|-----|--------|---------|
| [Peerspace](https://mobbin.com/screens/11ef987a-4ea0-4838-ad47-ea04a8fb619a) | Photos | Upload zone + thumbnail grid |
| [Airbnb](https://mobbin.com/screens/432c7b49-a366-400d-950a-9a20046872d0) | Add photos | Split layout, drag reorder |
| [DocuSign](https://mobbin.com/screens/5d07252d-be22-48f4-a085-4832cab830f7) | Upload modal | Large grey upload target |

**Applied:** `04-capture-room.html` — two-column capture, upload block, photo grid placeholders

## Review

| App | Screen | Pattern |
|-----|--------|---------|
| [Gusto](https://mobbin.com/screens/bbd300f6-4007-40f5-880a-29a55f379ff7) | Steps form | Clear section hierarchy |
| [Manus](https://mobbin.com/screens/7d6e6d91-1fd9-44f2-a7ab-fe36239b4194) | Task progress | Completion checklist |

**Applied:** `05-review.html` — alert stack + data table

## Export / success

| App | Screen | Pattern |
|-----|--------|---------|
| [Confluence](https://mobbin.com/screens/3c9498c1-b970-4cf2-9352-212fd8bd146f) | Export complete | Centered success + download |
| [Behance](https://mobbin.com/screens/d31fb423-a6c3-4cb9-86a8-ac70a5aca49b) | Purchase | Preview + primary download CTA |
| [PandaDoc](https://mobbin.com/screens/62543a34-2594-4fef-8313-a580e2fbb874) | Complete | Minimal success state |

**Applied:** `06-export.html` — PDF preview placeholder + action panel

## Design system notes

- **Type:** Inter (Google Fonts)
- **Surfaces:** White cards on `#f7f7f8` app background
- **Accent:** Forest green `#1b4332` (renter/trust tone)
- **Elevation:** Soft shadows only — no wireframe outlines
- **Media:** `.ph` classes = 12% grey rectangles only
