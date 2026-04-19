# Product Requirements Document (PRD)
## Ontario Family Law Assistant

**Version:** 1.0  
**Last Updated:** April 19, 2026  
**Status:** Development Phase  
**Owner:** Danielle Pike / CustodyBuddy

---

## 📋 Executive Summary

### Vision
Create an AI-powered educational assistant that empowers self-represented parents in Ontario to navigate high-conflict custody disputes with confidence, competence, and appropriate professional support.

### Mission
Reduce barriers to justice by providing accessible, trauma-informed legal education and practical tools for parents who cannot afford or access traditional legal representation.

### Target Users
Self-represented parents in Ontario facing high-conflict custody situations, particularly those dealing with narcissistic or manipulative co-parents.

---

## 🎯 Product Goals

### Primary Goals:
1. **Increase legal literacy** among self-represented parents
2. **Improve documentation quality** for court submissions
3. **Reduce conflict escalation** through strategic communication
4. **Provide trauma-informed support** for abuse survivors
5. **Maintain clear professional boundaries** (education, not advice)

### Success Metrics:
- User confidence in understanding their legal rights
- Quality of court documentation produced
- Reduction in reactive/inflammatory communications
- Appropriate referrals to professional services
- User satisfaction and feedback scores

---

## 👥 User Personas

### Persona 1: Sarah - The Overwhelmed Self-Rep
**Demographics:**
- Age: 34
- Income: $45K/year
- Education: College diploma
- Children: 2 (ages 5, 8)

**Situation:**
- Recently separated from narcissistic partner
- Cannot afford lawyer ($5K+ retainer)
- Facing upcoming court date
- Receiving 30+ texts daily from ex
- Confused by legal forms and procedures

**Needs:**
- Plain language explanation of legal concepts
- Help organizing evidence
- Communication strategies
- Step-by-step court preparation
- Emotional validation + practical action

### Persona 2: Marcus - The Strategic Father
**Demographics:**
- Age: 41
- Income: $75K/year
- Education: University degree
- Children: 1 (age 12)

**Situation:**
- 2 years into custody battle
- Ex has lawyer, he self-represents
- Documenting concerning behavior patterns
- Preparing for trial
- Needs advanced legal strategies

**Needs:**
- Case law research guidance
- Affidavit structuring
- Cross-examination prep
- Pattern documentation
- Best interests analysis

### Persona 3: Jennifer - The Protective Mother
**Demographics:**
- Age: 29
- Income: $38K/year
- Education: High school
- Children: 3 (ages 2, 4, 7)

**Situation:**
- Leaving abusive relationship
- Safety concerns about ex's parenting
- Limited English proficiency
- Overwhelmed by court system
- Needs safety planning

**Needs:**
- Safety-first guidance
- Simple, clear instructions
- Crisis resource connections
- Documentation of concerning incidents
- CAS/police liaison guidance

---

## 🏗️ Product Architecture

### Core Components:

**1. AI Agent (Claude Sonnet 4)**
- System instructions in CLAUDE.md
- 10 specialized skills
- Response frameworks for common scenarios
- Triage protocols for safety/referrals

**2. Knowledge Base**
- Legislation summaries (Divorce Act, CLRA, FLA)
- Case law precedents
- Court procedures
- Narcissistic pattern recognition

**3. Template Library**
- Correspondence (BIFF emails, boundary scripts)
- Documentation (incident reports, timelines)
- Court forms (completion guides)
- Parenting plans (parallel parenting)
- Affidavits (structure examples)

**4. Skills System**
- ontario-family-law-advisor
- biff-communication-coach
- incident-report-generator
- parallel-parenting-planner
- narcissistic-pattern-analyzer
- affidavit-drafter
- best-interests-analyzer
- timeline-builder
- court-form-assistant
- legal-research-helper

**5. Integration Layer**
- CustodyBuddy sync (incident taxonomy)
- Supabase database (user data, incidents)
- Make.com automation (workflows)

---

## 🎨 Key Features

### Phase 1: Foundation (MVP)
**Timeline:** Weeks 1-4

✅ **Core Documentation**
- README.md
- CLAUDE.md (AI instructions)
- LEGAL_DISCLAIMER.md
- PRD.md (this document)

✅ **High-Value Skills**
- BIFF Communication Coach
- Incident Report Generator
- Ontario Family Law Advisor

✅ **Essential Knowledge**
- Divorce Act key sections
- CLRA key sections
- Narcissistic pattern recognition guide

### Phase 2: Core Tools
**Timeline:** Weeks 5-8

🔲 **Additional Skills**
- Parallel Parenting Planner
- Narcissistic Pattern Analyzer
- Affidavit Drafter

🔲 **Templates**
- BIFF email templates
- Incident report template
- Communication log template
- Parallel parenting plan template

🔲 **Scenario Playbooks**
- Excessive communication
- Withholding parenting time
- False allegations
- Introducing new partner

### Phase 3: Advanced Features
**Timeline:** Weeks 9-12

🔲 **Advanced Skills**
- Best Interests Analyzer
- Timeline Builder
- Court Form Assistant
- Legal Research Helper

🔲 **Knowledge Base Expansion**
- Case law summaries
- Court procedures
- Enforcement mechanisms

🔲 **Content Library**
- Educational articles
- FAQs
- Checklists

### Phase 4: Integration & Polish
**Timeline:** Weeks 13-16

🔲 **CustodyBuddy Integration**
- Shared incident taxonomy
- API integration
- Data synchronization

🔲 **Database Layer**
- Supabase schema
- RLS policies
- User authentication

🔲 **Automation**
- Make.com blueprints
- Email workflows
- Court date reminders

---

## 🎯 User Journeys

### Journey 1: First-Time User Seeking Help

**Entry Point:** Google search "Ontario custody help no lawyer"

**Steps:**
1. Lands on README → Understands what tool does
2. Reviews LEGAL_DISCLAIMER → Knows boundaries
3. Asks question → Gets BIFF Communication Coach suggestion
4. Uses skill → Rewrites reactive email
5. Gets result → Feels more in control
6. Explores more skills → Finds incident reporter

**Success:** User understands tool, uses it appropriately, feels supported

### Journey 2: Preparing for Court

**Entry Point:** Court date in 3 weeks

**Steps:**
1. Asks "How do I prepare for court?"
2. Gets triage → Ontario Family Law Advisor responds
3. Receives checklist → Court form guide, affidavit tips
4. Uses Affidavit Drafter → Organizes evidence
5. Uses Timeline Builder → Creates chronology
6. Reviews output → Feels prepared

**Success:** User has court-ready materials, understands process

### Journey 3: Safety Concern

**Entry Point:** "My ex threatened me in front of the kids"

**Steps:**
1. Describes situation
2. **Safety assessment** triggers
3. Gets immediate triage → Police? CAS? Lawyer?
4. Receives safety planning resources
5. Documents incident properly
6. Gets referral to appropriate services

**Success:** User safe, incident documented, connected to help

---

## 🚨 Critical Safety Features

### Mandatory Triage Protocols:

**Immediate Danger:**
- Detects keywords: "threatened", "hurt", "weapon", "scared"
- **Action:** Immediate police/shelter referral
- No delay for documentation

**Child Safety:**
- Detects: abuse, neglect, substance abuse with children
- **Action:** CAS contact info, lawyer referral
- Document but prioritize safety

**Mental Health Crisis:**
- Detects: suicidal ideation, self-harm, crisis language
- **Action:** Crisis line numbers, emergency services
- Do not attempt AI support for crisis

**Legal Emergency:**
- Detects: court date tomorrow, abduction risk, protection order violation
- **Action:** Emergency lawyer, duty counsel, police

### Red Flag Detection:

System monitors for:
- Requests to provide legal advice → Redirect + disclaim
- Requests to diagnose → Boundary reminder
- Encouragement of alienation → Child-focused reframe
- Minimization of safety → Escalate concern
- Unrealistic expectations → Reality check + support

---

## ⚖️ Legal & Ethical Guardrails

### Hard Boundaries:

**NEVER:**
1. Provide legal advice
2. Diagnose mental health conditions
3. Predict court outcomes
4. Encourage parental alienation
5. Minimize safety concerns
6. Guarantee results
7. Create false confidence

**ALWAYS:**
1. Include legal disclaimers
2. Recommend lawyer consultation
3. Prioritize child safety
4. Maintain trauma-informed tone
5. Recognize limits
6. Refer when appropriate
7. Document appropriately

### Disclaimer Placement:

- Every legal discussion → Legal disclaimer
- Every template → Usage limitations
- Every skill → Boundary statement
- Every court form guide → "Not legal advice"

---

## 🛠️ Technical Requirements

### AI Model:
- **Claude Sonnet 4** (claude-sonnet-4-20250514)
- Do not downgrade model
- Maintain context limits
- Use skills system

### Database (if deployed):
- **Supabase** (PostgreSQL)
- Row Level Security (RLS)
- User authentication
- Encrypted storage

### Automation (optional):
- **Make.com** scenarios
- Email workflows
- Calendar integrations
- Document generation

### Frontend (if web app):
- **Next.js 15**
- **Tailwind CSS**
- **Vercel deployment**
- Mobile-responsive

---

## 🎨 Design System

### Brand Integration (CustodyBuddy):
- **Colors:** Navy (#020716), Gold (#F6BA21), Cream (#FAFAF8)
- **Fonts:** Playfair Display (headings), Inter (body)
- **Tone:** Professional, compassionate, empowering
- **Voice:** Trauma-informed, direct, supportive

### Content Principles:
1. **Plain language first** - Legal terms explained
2. **Action-oriented** - What can they do?
3. **Empowering not overwhelming** - Break down steps
4. **Validate emotions** - Then guide action
5. **Child-focused framing** - Always return to best interests

---

## 📊 Success Metrics

### User Engagement:
- Skills used per session
- Return user rate
- Session duration
- Completion rate (e.g., finishing incident report)

### Quality Indicators:
- Appropriate referrals made
- Legal disclaimers shown
- Safety protocols triggered
- Boundary maintenance

### User Outcomes (Survey):
- Confidence in legal understanding
- Quality of court documentation
- Reduction in conflict
- Connection to professional help
- Satisfaction score

### Safety Metrics:
- Safety concerns identified
- Appropriate escalations
- Crisis referrals made
- Professional help connections

---

## 🚧 Risks & Mitigation

### Risk 1: Unauthorized Practice of Law
**Mitigation:**
- Strong disclaimers everywhere
- Clear education vs. advice distinction
- Lawyer referrals
- No case-specific determinations

### Risk 2: Safety Incidents Missed
**Mitigation:**
- Robust triage protocols
- Keyword detection
- Conservative referral threshold
- Clear escalation paths

### Risk 3: User Over-Reliance
**Mitigation:**
- Regular lawyer consultation reminders
- Acknowledge AI limitations
- Highlight complexity
- Professional service emphasis

### Risk 4: Inaccurate Legal Information
**Mitigation:**
- Regular legislative reviews
- Case law monitoring
- Dated content
- Source citations

### Risk 5: Trauma Re-traumatization
**Mitigation:**
- Trauma-informed language
- Content warnings where needed
- Crisis resources prominent
- Validation before action

---

## 📅 Development Roadmap

### Q2 2026 (Current):
- ✅ Project structure created
- ✅ Foundation documents (README, CLAUDE, LEGAL_DISCLAIMER, PRD)
- ✅ Core skills (BIFF, Incident, Advisor)
- ✅ Essential knowledge base
- 🔲 MVP testing

### Q3 2026:
- 🔲 Additional skills (Parallel, Narcissistic, Affidavit)
- 🔲 Template library
- 🔲 Scenario playbooks
- 🔲 Content library
- 🔲 Beta user testing

### Q4 2026:
- 🔲 Advanced skills (Best Interests, Timeline, Court Form, Research)
- 🔲 CustodyBuddy integration
- 🔲 Database implementation
- 🔲 Automation workflows
- 🔲 Public beta launch

### Q1 2027:
- 🔲 User feedback incorporation
- 🔲 Feature expansion
- 🔲 Marketing & outreach
- 🔲 Partnership development
- 🔲 1.0 launch

---

## 🤝 Stakeholders

### Primary:
- **Self-represented parents** - End users
- **Danielle Pike** - Product owner
- **CustodyBuddy** - Parent platform

### Secondary:
- **Family lawyers** - Referral partners
- **Therapists** - Support referrals
- **Legal Aid** - Access to justice partners
- **Community organizations** - Outreach

### Professional Advisors:
- Family law lawyer (content review)
- Clinical psychologist (trauma-informed review)
- Self-rep coordinators (user feedback)

---

## 💰 Business Model

### Free Tier:
- All skills accessible
- All templates available
- Educational content free
- Community-supported

### Revenue Streams:
- **Donations** - custodybuddyai@gmail.com
- **Affiliate links** - Amazon `custodybudd0c-20`
- **CustodyBuddy integration** - Premium features
- **Potential future:** Professional training, workshops

### Cost Structure:
- AI API costs (Claude)
- Database hosting (Supabase)
- Automation (Make.com)
- Domain & hosting
- Content development time

---

## 📝 Open Questions

1. Should we build web interface or keep conversational?
2. What data should we store vs. keep ephemeral?
3. How to handle bilingual requirements (French)?
4. Partnership model with legal clinics?
5. Certification or training for professionals?

---

## ✅ Definition of Done

**MVP is complete when:**
- [ ] Core 3 skills operational
- [ ] Essential knowledge base populated
- [ ] All disclaimers in place
- [ ] Safety protocols tested
- [ ] 10 beta users provide feedback
- [ ] Legal review completed
- [ ] Documentation complete

---

**Product Owner:** Danielle Pike  
**Last Review:** April 19, 2026  
**Next Review:** May 19, 2026  
**Status:** In Development