# OpenAI Codex App Recruiter Prep

Prepared for:
- Pandelis Zembashis

Primary target role:
- [Software Engineer, Codex App](https://openai.com/careers/software-engineer-codex-app-san-francisco/)

Date checked:
- April 23, 2026

## The core thesis I want to communicate

I am not coming into this role as someone who is merely excited about AI tooling in the abstract. I have already been building the kinds of systems this role is about.

At Cosine, I have been working on coding-agent product surfaces that span:
- CLI workflows
- browser use
- internet research
- memories
- model integration
- a recently released desktop experience
- architecture for a VS Code extension

The most important part of that story is not just the feature list. It is how the system was designed:
- a single Go binary
- no external dependencies
- portable enough to embed in multiple surfaces
- architected around an event bus
- able to support UI and agent interactions across layers
- designed to make feature reuse and cross-surface consistency realistic

That maps directly to the Codex App role because the role is fundamentally about building trustworthy developer workflows across UI, backend, process boundaries, orchestration, and integration with native services.

## The stance I should take in the screen

I should sound like:
- a product-minded engineer who understands system boundaries
- someone who has built analogous things already
- someone who cares about developer experience, not just model benchmarks
- someone who wants to work on Codex App specifically, not "anything at OpenAI"

I should not sound like:
- a generic OpenAI fan
- someone applying only for brand reasons
- someone trying to impress with AI buzzwords
- someone making the role about "winning" or "joining the major leagues"

## My strongest positioning for Codex App

If I need to summarize my fit in one paragraph:

> I am a strong fit for Codex App because I have been building agentic developer tooling across CLI, desktop, and editor surfaces, and I have had to solve the real systems problems that make those workflows usable: process orchestration, state propagation, event-driven architecture, portability, installation friction, reliability, and product UX. What makes this role especially compelling is that it sits at the exact boundary I care about most: where agent capability becomes a concrete developer experience that has to feel fast, dependable, and worth using every day.

## My best 90-second "tell me about yourself" answer

> I’m Pandelis Zembashis. Most recently I’ve been building coding-agent systems at Cosine, focused on turning model capability into developer workflows that are actually usable day to day. A big part of that work has been designing the system, not just adding features. For example, our CLI has browser use, internet research, memory, and support for frontier coding models, and we architected it as a single Go binary with no external dependencies. That matters because it makes the system portable, easy to install, and easy to embed into different product surfaces.
>
> That same architecture now powers a desktop experience we recently released, and it is also shaping our next VS Code extension, where portability and clear system boundaries matter a lot. One of the key design decisions was making the agent loop event-bus-based, which let us keep the system modular and also made it easier for different layers to communicate cleanly with each other. So the common thread in my recent work has really been building agentic developer products end to end, with a lot of attention to orchestration, UX, and reliability.
>
> What draws me to the Codex App role is that it is exactly that problem space: building the desktop app and IDE experience where UI, TypeScript and Node layers, process orchestration, and integration with native services all have to come together in a way that feels fast and dependable for real developers.

## Detailed first-person answers

### Why are you interested in OpenAI?

> I am interested in OpenAI because it is one of the few places where frontier model capability, product experience, and runtime infrastructure are all improving together in a tight loop. That matters a lot to me. I have spent enough time in this space to know that a coding agent does not become valuable just because the underlying model is strong. It becomes valuable when the surrounding product and systems architecture are good enough that developers trust it in real workflows.
>
> OpenAI is particularly compelling because Codex is not just an isolated demo or an API wrapper. It is a product and platform effort where the boundaries between research, agent behavior, and daily developer workflows are actively being shaped. That is the environment I want to work in. I want to be close to the place where product decisions, system architecture, and model capabilities reinforce each other.
>
> More specifically, I am interested in OpenAI because I think the company is operating at the pace and level of ambition that this category requires. I have been building in the same general direction at Cosine, and I want to work at a place where the feedback loops are even tighter and the surface area of impact is larger.

### Why the Codex App role specifically?

> The Codex App role is compelling to me because it sits at the layer where these systems either become indispensable or get ignored. The app is where all of the theoretical capability of the agent has to survive contact with real-world developer workflows.
>
> I like that this role is not narrowly defined as frontend or backend. It explicitly spans UI, Node and TypeScript backend layers, IPC and process orchestration, and integration with Rust services. That is the kind of role I want. I do my best work when I can reason across the whole flow instead of being artificially boxed into one layer.
>
> It also matches the kinds of problems I have already been solving. In my recent work, a lot of the challenge has been making different layers of the system communicate cleanly, making the product portable across surfaces, and making agent behavior observable and reliable enough that users can build trust in it. The Codex App role reads like a more mature and more ambitious version of exactly those challenges.

### What have you been building at Cosine that is relevant?

> I have been building agentic developer tooling that goes beyond a basic CLI wrapper around a model. Our CLI includes browser use, internet research, memory, and support for cutting-edge coding models. But more important than the features is that we architected it as a single Go binary with no external dependencies, even bundling in ripgrep. That made it much easier to embed in different contexts and significantly reduced installation and operational friction for users.
>
> That same underlying architecture now powers a desktop experience we recently released, and is being embedded into a VS Code extension via WebAssembly. I think that part is especially relevant to Codex App. It means I have been thinking about how to design one coherent system that can show up in multiple developer environments without duplicating the entire implementation each time.
>
> Another key piece is that the agent loop is event-bus-based. That let us model the system as a set of events that can move across boundaries in a clean way, including events that can request UI affordances or coordinate between layers. In practice, that means the system is more modular, easier to introspect, and easier to extend across CLI, desktop, and editor surfaces.
>
> So when I look at the Codex App description and see things like process lifecycle, streaming output, error handling, IPC boundaries, long-running tasks, incremental progress, cancellation, retries, and state synchronization, those are not abstract concerns to me. They are exactly the kinds of constraints I have already been working through.

### Why does the single-binary and portability story matter?

> I think portability matters because developer tools only become part of a user’s daily workflow if they are easy to adopt and easy to trust. Every extra dependency, every environment-specific assumption, and every fragile installation step creates drag.
>
> By architecting the system as a single Go binary with no external dependencies, we made it much easier to ship, embed, and reason about. That was not just an implementation detail. It was a product decision. It gave us a cleaner path to use the same underlying system across CLI, desktop, and extension contexts.
>
> For me, that connects directly to the Codex App role because the role is not just about building a UI. It is about defining clean boundaries between product layers and native processes so the whole system remains reliable and maintainable as it grows.

### Tell me more about the event bus design and why you chose it

> One of the core design choices I am proud of is making the agent loop event-bus-based. I like that architecture because it creates explicit contracts between parts of the system. Instead of having every feature tightly coupled to one particular surface or execution path, the system can communicate through events that are easier to observe, route, and reason about.
>
> In practice, that meant a few useful things. It made the system more self-describing, because you can inspect the events flowing through it and understand what the agent and product are doing. It made it easier to support multiple interfaces, because the same underlying actions could trigger different UI or workflow responses depending on context. And it created a cleaner path for bidirectional interaction between the agent and the product layer.
>
> That is one of the reasons I think I fit the Codex App role well. The role calls out IPC architecture, message schemas, backpressure, safety, debugging, long-running tasks, incremental progress, cancellation, retries, and synchronization. Those are exactly the kinds of problems that benefit from clear event-driven contracts rather than ad hoc coupling.

### You have not been working in Electron full-time. How would you address that?

> That is true, and I would address it directly rather than trying to dodge it. I have not spent the majority of my recent time in Electron specifically. But I have been working on the underlying class of problems that matter most in this role: product workflows that cross UI boundaries, backend layers, native processes, and agent runtime concerns.
>
> My view is that the hardest part of this role is not memorizing Electron APIs. It is designing a system that handles streaming output, process lifecycle, error handling, retries, cancellation, observability, and state synchronization in a way that still feels crisp to the user. Those are architectural problems, and they carry across frameworks.
>
> I also think my recent work demonstrates that I can move across stacks when the problem is compelling. I have been building across Go, desktop architecture, CLI systems, and extension portability. I would be very comfortable getting deep on the Electron-specific edges because the underlying systems thinking is already central to how I work.

### Why not stay at Cosine?

> I have learned a lot at Cosine, and I respect the work we have done there. The reason I am exploring this is not dissatisfaction. It is that I think OpenAI, and specifically Codex, is the place where the model, runtime, and product loops are currently compounding the fastest.
>
> I have spent the last stretch building in this category and I have gotten a strong sense of where I want to keep pushing. I want to work in an environment where the pace is extremely high, the product is defining the category, and the feedback loop between what users need and what the system can do is exceptionally tight.
>
> Put simply, I want to work on this problem at the highest level of ambition and with the broadest user impact. That is what makes this role attractive to me.

### Why now?

> It feels like the right moment because coding agents are moving out of the phase where raw novelty carries the product. The next phase is about making them dependable enough to become part of everyday engineering workflows. That is exactly the transition I care most about.
>
> I have already been building in that direction. Now I want to do it somewhere that is pushing the frontier on both capability and product. OpenAI seems like the right place to do that.

### What are you looking for in your next role?

> I am looking for a role where I can own meaningful parts of the user experience and the underlying architecture at the same time. I do not want to be separated from either the product reality or the systems reality. I want to work on hard problems where design decisions, architecture decisions, and user trust are tightly connected.
>
> I also want to be in an environment with a high bar, strong technical peers, and fast iteration. I care a lot about working on something that people actually use every day, especially if that product is actively reshaping how software gets built.

### What kind of environment do you do your best work in?

> I do my best work in environments that are ambitious, technically serious, and product-oriented. I like teams that move fast, but I specifically like fast teams that are fast because they have good taste in architecture and clear decision-making, not because they cut corners blindly.
>
> I also do my best work where there is genuine cross-functional thinking. For a role like this, I think product, design, infrastructure, and developer experience all need to inform each other. I am most effective when I can work across those boundaries and help turn ambiguous requirements into something concrete and shippable.

### What would you want to work on first in Codex App?

> Without knowing the internal roadmap, the kinds of areas I would be most excited about are the ones where reliability and product quality intersect most directly. That could mean process orchestration, streaming output and progress reporting, cancellation and retry behavior, state synchronization across layers, or observability and debugging for long-running tasks.
>
> Those areas matter because they disproportionately affect whether the product feels dependable. My bias would be to work on the seams where a powerful system can still feel brittle if the boundaries are not designed well.

### Why do you think developers trust some tools and not others?

> I think trust comes from a combination of capability, predictability, and recovery. A tool does not need to be perfect, but it does need to behave coherently. Users need to understand what it is doing, where it is in a workflow, what failed, and what happens next.
>
> In agentic developer tools, trust erodes quickly when process state is unclear, when cancellation is unreliable, when errors feel random, when progress is opaque, or when the product behaves differently across surfaces. That is why I care so much about architecture and observability. Good product feel is often the visible outcome of good systems design.

### Why did Andrew Ambrosino's post resonate with you?

> It resonated with me because it was direct and product-specific. It was not a generic hiring post. It basically said: if you love the Codex app and have built real things, reach out. That matches how I think about this category. I did not want to approach the team as someone with generic enthusiasm. I wanted to approach it with concrete experience and a clear architectural point of view.
>
> I had already been building adjacent systems at Cosine, including a CLI with browser use, research, and memory, and an architecture designed to power desktop and editor experiences. So the post felt like an invitation to have a serious conversation about real product and systems work, which is exactly the conversation I wanted to have.

### How should I talk about my DM to Andrew?

Use this framing:

> I reached out because I had built things that felt directly relevant to the product. I wanted to show concrete work rather than send a generic note. The conversation reinforced that this team is thinking seriously about the same hard problems I care about: architecture, workflow quality, portability, and how to make coding agents genuinely useful for developers.

Do not use this framing:

> I told him we were building Codex before Codex.

Do not use this framing:

> It is time for me to ascend to the major leagues.

Those phrases can sound competitive, performative, or brand-driven. The stronger version is technical and specific.

### How should I answer if they ask whether I am more app or more infrastructure?

> I naturally think across both, but for this role I am intentionally leaning into the app side because I think the app is where all of the architectural tradeoffs become real to the user. I care a lot about the product boundary between UI, orchestration, and native services. That said, I think one of my strengths is that I can reason across the full path rather than treating the app as a thin shell on top of someone else’s system.

### How should I answer if they ask whether I want to work with the London team or San Francisco?

> I am flexible on team geography and I care most about being aligned to the team where my background is the strongest fit and where I can contribute quickly. What matters most to me is working closely with the people defining the product and architecture.

### How should I answer compensation questions?

> I am primarily focused on fit, scope, and leveling. I did see the posted range for the role, and I would expect compensation to land within that range depending on level and the overall package.

## Answer bank for short recruiter questions

### Why OpenAI in one sentence

> Because I want to work where frontier model capability, runtime architecture, and real developer product experience are evolving together.

### Why Codex App in one sentence

> Because I want to work on the layer where coding-agent capability becomes a daily-use developer workflow rather than a demo.

### What have you built that is most relevant in one sentence

> I have built an event-driven, portable coding-agent system across CLI, desktop, and extension-oriented surfaces, with a lot of attention to orchestration, portability, and trust.

### What is your edge in one sentence

> I understand both the product feel and the systems architecture required to make agentic developer tools believable in real use.

## Stories I should have ready

### Story 1: Portable architecture

Main point:
- I designed and contributed to a system that could support multiple product surfaces from one core architecture.

What I say:

> One story I would probably highlight is how we designed the Cosine CLI as a single Go binary with no external dependencies. That sounds like an implementation detail, but it really shaped the product strategy. It reduced installation friction, made the system more portable, and gave us a cleaner path to reuse the core logic across future surfaces like desktop and editor integrations. I think that experience made me much more opinionated about keeping system boundaries clean and making portability a first-class concern rather than something you retrofit later.

### Story 2: Event-bus architecture

Main point:
- I think in terms of explicit contracts and orchestration across layers.

What I say:

> Another story I would use is the event-bus-based agent loop. That design let us model the system in a way that was easier to observe and easier to adapt across different interfaces. It also helped us support more bidirectional interactions between the agent and product layer. I think that is highly relevant to a role like Codex App, where process orchestration, streaming output, state sync, and UI integration all depend on having clear contracts rather than a pile of tightly coupled code.

### Story 3: Product realism

Main point:
- I care about what makes the product usable, not just technically impressive.

What I say:

> A broader lesson from this space is that users do not care how impressive the system sounds if it feels unreliable in the moments that matter. The real work is making long-running tasks, progress updates, retries, errors, and state transitions feel coherent. That is part of why this role appeals to me so much. It is about shipping an experience that developers trust, not just a capability they try once.

## Questions I should ask the recruiter

- How does the Codex App team divide work today between core product features and more foundational architecture work?
- What kinds of backgrounds have tended to do especially well on this team?
- How much of the role is currently about building new workflows versus hardening and scaling existing ones?
- How closely does the app team work with the teams responsible for the CLI, runtime, and model-serving boundaries?
- What are the biggest product or architecture challenges the team wants this hire to help with in the first 6 months?
- How is the interview process calibrated for candidates who are strong on architecture and product systems, even if they have not been in Electron full-time?

## Questions I should ask Andrew or the hiring manager later

- Where do you think the current app architecture has the most leverage for improvement?
- Which parts of the UI-to-process boundary have been the hardest to get right so far?
- How do you think about the right separation between app concerns and runtime concerns?
- What have you learned about making long-running agent tasks feel trustworthy in the desktop product?
- Where do you expect the biggest product differentiation to come from over the next year: UX, architecture, model capability, or developer workflow integration?

## Phrases worth reusing

- dependable developer workflows
- real developer environments
- turning capability into product
- clean boundaries between layers
- process orchestration
- portability and installation friction
- event-driven architecture
- observability and trust
- daily-use developer experience
- product-minded systems work

## Phrases to avoid

- "We were building Codex before Codex."
- "It is time to ascend to the major leagues."
- "OpenAI is the winner."
- "I will do anything."
- "I just want to work on AI."

Those lines weaken your position because they make you sound brand-driven, defensive, or generic. Your stronger angle is that you have a real point of view on the app and have built adjacent systems already.

## My best closing answer

> The reason I am excited about Codex App is that it sits exactly at the boundary I care about most. I have already spent a meaningful amount of time building agentic developer tooling and thinking hard about portability, orchestration, and workflow quality across surfaces. I want to keep pushing on those problems in the place that is moving the fastest and has the clearest opportunity to shape how developers actually work. From the outside, Codex App looks like that place.

## Sources

- [OpenAI Codex App role](https://openai.com/careers/software-engineer-codex-app-san-francisco/)
