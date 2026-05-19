# Cavera — design decisions (Mobbin + wineurya/pf)

This document records **what we copied**, **what we rejected**, and **why**—so the wireframes stay Mobbin-grade without becoming a generic template.

Design tokens: `docs/design-system/cavera-tokens.css` (from [wineurya/pf](https://github.com/wineurya/pf)). **Inter** is the fallback when portfolio display/body fonts are not loaded.

---

## Global system

| Decision | Source | Kept? | Rationale |
|----------|--------|-------|-----------|
| Primary action color `#2563eb` | pf `--wx-primary` | **Yes** | Portfolio-aligned; reads as product/SaaS. Earlier forest-green (`#1b4332`) **rejected**—felt like eco/finance, not your brand. |
| No visible card borders | pf principle *“Stack values, not lines”* | **Yes** | Stripe, Copilot, Uxcel separate surfaces with **background steps** + whitespace, not 1px boxes. |
| 12% grey image blocks | Your spec | **Yes** | `rgba(0,0,0,0.12)` only—no icons/text inside placeholders (Mobbin export style). |
| Inter fallback | pf token stacks | **Yes** | Body 400, labels 510, headings 590—matches pf type scale. |
| Page gutter `clamp(1rem, 4vw, 3rem)` | pf `--layout-gutter` | **Yes** | Marketing hero breathes on large screens; mobile not crushed. |
| Inner card padding **24px** (`spacing-6`) | pf spacing scale | **Yes** | Below 20px feels cramped (Peerspace upload); above 32px wastes space in dense flows. |
| Section vertical rhythm **40px** (`spacing-10`) | Hootsuite / Copilot | **Yes** | Clear section breaks without “floating” components. |
| Radius **12px** on cards (`radius-xl`) | pf + Airbnb upload modal | **Yes** | 8px feels dated; 16px+ feels consumer-playful. **12px is the default.** |

---

## 01 — Marketing home

### Mobbin references

**[Pipedrive](https://mobbin.com/screens/9a708696-6879-4c16-8264-2016b22bf86c)**  
- **Took:** Split hero (~50/50), left copy hierarchy (H1 → sub → CTA), right **product frame** with soft shadow.  
- **Skipped:** Illustrated characters and decorative blobs—noise for a trust/legal-adjacent tool.

**[Fibery](https://mobbin.com/screens/a8eb45e6-ca91-450d-a459-5fcfc3a0325f)**  
- **Took:** Single dominant H1, one primary + one secondary CTA.  
- **Skipped:** Center-only layout—Cavera needs a **product preview** on desktop.

### Padding callouts

- Header: **20px × 32px** (aligns to `spacing-5` × `layout-gutter`).  
- Hero: **48px top / 80px bottom** so CTA block is not flush to fold.  
- CTA gap: **12px** between buttons—enough separation without feeling like two primaries.

---

## 02 — Create report

### Mobbin references

**[Gusto](https://mobbin.com/screens/5964d1f6-e082-4612-a968-568b09e2cc8a)**  
- **Took:** Left **vertical step list** with active state (weight + tint), main column form.  
- **Skipped:** Full-width teal brand—conflicts with pf blue.

**[Mercury](https://mobbin.com/screens/e28a9181-3081-4437-a505-c80a03a3c026)**  
- **Took:** **Top stepper** (Setup → Rooms → Capture → Export) for wayfinding when sidebar collapses on mobile.  
- **Skipped:** “3 / 6” giant progress numerals—too corporate-banking for renters.

**[Stripe Billing setup](https://mobbin.com/screens/92c629f3-bf5a-49a0-9a6a-4cb187cb1b52)**  
- **Took:** One task per row, generous line-height, right-aligned secondary actions.  
- **Skipped:** Full-page checklist—we still need a **focused form** first.

### Ruthless calls

- **No multi-column address form on v1**—single column **max 520px** reduces errors on mobile (Gusto uses full width; we narrow intentionally for phone-first).  
- **Segmented Move-in / Move-out** kept—only two options; dropdown would add taps.

---

## 03 — Room overview

### Mobbin references

**[Airbnb — Submit experience](https://mobbin.com/screens/e49fb845-588a-4982-9672-64589256e6d9)**  
- **Took:** Sidebar section “Experience page” + **grid of media cards**, “…” affordance top-right on tiles.  
- **Skipped:** Literal Airbnb dark sidebar—we use **light** pf shell.

**[Uxcel checklist](https://mobbin.com/screens/38804fe0-c387-4914-9294-9afbf9c87fca)**  
- **Took:** Progress ring / “N of M complete” copy above grid.  
- **Skipped:** Purple accent and upgrade banner—wrong brand.

**[Hootsuite Getting Started](https://mobbin.com/screens/5aff7542-0a89-481d-af47-2b0d2ca78098)**  
- **Took:** **2-column card grid** for tasks with status chips (“Done”).  
- **Skipped:** Dense 2×3 micro-cards—our cards are **room tiles** with 16:9 thumbs.

### Card spec

- Thumb: **16:9** grey block, **0 radius top** flush to card (Peerspace / Booking).  
- Body padding: **14px 16px 16px** (slightly tighter than 24px form card—tile density).  
- Grid gap: **16px** (`spacing-4`).

---

## 04 — Capture room

### Mobbin references

**[Peerspace Photos](https://mobbin.com/screens/11ef987a-4ea0-4838-ad47-ea04a8fb619a)**  
- **Took:** Upload region + **grid below**, instructional line above grid.  
- **Skipped:** Black header bar—too editorial; we use app shell.

**[Airbnb — Add photos](https://mobbin.com/screens/770168e8-9f1d-4a74-9e4a-bee064948a2c)**  
- **Took:** “Add more” as **dashed** reserved cell in grid (we use solid 12% block for wireframe consistency per your rule).  
- **Skipped:** Masonry layout—**uniform grid** scans faster for “missing wide shot”.

**[Copilot onboarding](https://mobbin.com/screens/bada85fd-11d8-4309-9113-28fce548c772)**  
- **Took:** **Left column** task/context, **right** workspace (illustration → grey rect).  
- **Skipped:** Split checklist/detail inside one card—v1 uses **chips + note left, grid right**.

### Ruthless calls

- **No drag-reorder in v1 wireframe**—Booking.com drag state is v1.1; adds engineering + a11y cost.  
- Upload zone **min-height 200px**—DocuSign modal uses large target; smaller feels like “broken empty state”.

---

## 05 — Review

### Mobbin references

**[Stripe setup rows](https://mobbin.com/screens/92c629f3-bf5a-49a0-9a6a-4cb187cb1b52)**  
- **Took:** Scannable **table** for room summary alongside flags.  
- **Skipped:** Green check-only list without data columns—insufficient for “missing wide shot” audit.

**[Copilot 80% onboarding](https://mobbin.com/screens/bada85fd-11d8-4309-9113-28fce548c772)**  
- **Took:** **Warning vs OK** grouped alerts with soft tinted backgrounds (not red borders).  
- **Skipped:** Illustration column—review is data-dense.

### Alert colors

- Warn: pf `--color-warning-500` at ~8% mix (warm, not error-red).  
- OK: success green at ~8% mix—**not** full green buttons (avoids “success theater” before export).

---

## 06 — Export

### Mobbin references

**[Confluence export complete](https://mobbin.com/screens/3c9498c1-b970-4cf2-9352-212fd8bd146f)**  
- **Took:** Large preview + **single primary Download** centered in hierarchy.  
- **Skipped:** Full-page empty state— we use **split layout** on desktop.

**[Behance purchase modal](https://mobbin.com/screens/d31fb423-a6c3-4cb9-86a8-ac70a5aca49b)**  
- **Took:** Preview left, **stacked actions right**, pill buttons.  
- **Skipped:** Modal—export is a **route** (shareable, back button works).

**[PandaDoc complete](https://mobbin.com/screens/62543a34-2594-4fef-8313-a580e2fbb874)**  
- **Took:** Short headline + one line of subcopy; no legal wall of text.  
- **Skipped:** Centered-only layout on desktop.

### PDF preview block

- **Min-height 480px** grey rectangle—proportion of printable page, not a thumbnail strip.

---

## Responsive rules

| Breakpoint | Behavior |
|------------|----------|
| &lt; 900px | Sidebar hidden; stepper in header is **only** progress UI (Mercury mobile). |
| ≥ 900px | Sidebar **260px**; main obeys `max-width` content columns. |
| Marketing | Stack hero; preview **below** copy (Fibery mobile pattern). |

---

## What we will not do (even if Mobbin shows it)

1. **Dark mode v1** — pf marketing is light; dual theme doubles QA.  
2. **Illustrated empty states** — placeholders stay 12% grey until real art direction.  
3. **Gradients on CTAs** — pf uses flat `--wx-primary`; gradients date quickly.  
4. **More than 2 CTAs in hero** — Fireflies-style bullet CTAs **rejected** (choice paralysis).  
5. **Native app tab bar** — product wedge is **web**; iOS chrome **rejected**.

---

## Verification

Wireframes in `wireframes/` implement this doc. Screenshots: `docs/screenshots/` (generated from local server).
