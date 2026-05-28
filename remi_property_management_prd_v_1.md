# Remi – Product Requirements Document (PRD)

## Version
V1.0

## Product Name
Remi

## Product Type
Property and Rent Management Platform

## Prepared For
Initial MVP Development and Product Validation

## Prepared By
Shema Christian

---

# 1. Product Overview

## 1.1 Product Summary
Remi is a modern, mobile-first property and rent management platform designed specifically for landlords and tenants in Rwanda.

The platform aims to simplify rent tracking, tenant management, payment monitoring, reminders, and property organization for landlords who are often non-technical and still rely on notebooks, memory, or manual tracking.

The system prioritizes:
- Simplicity
- Accessibility
- Offline functionality
- Local usability
- Mobile-first workflows
- Minimal friction

The long-term vision is to evolve Remi into a full property management ecosystem.

---

# 2. Problem Statement

Many landlords in Rwanda face recurring operational problems including:

- Forgetting tenant names and contacts
- Losing track of payment dates
- Difficulty tracking overdue payments
- Managing multiple properties manually
- Lack of centralized records
- No automated reminder systems
- No organized payment history
- Poor communication workflows

Tenants also experience:
- Missed payment dates
- Lack of payment history visibility
- Poor communication transparency
- Difficulty proving previous payments

Current solutions are mostly:
- notebooks
- WhatsApp chats
- spreadsheets
- memory-based management

These methods are inefficient, error-prone, and not scalable.

---

# 3. Product Vision

To become the leading property and rent management platform in Rwanda by providing a simple, modern, and scalable system that helps landlords and tenants manage rentals efficiently.

---

# 4. Target Users

## 4.1 Landlords
Primary users.

### Characteristics
- May own single or multiple properties
- Often not highly technical
- Need simple interfaces
- Need reliable payment tracking
- Need reminder automation
- Need centralized tenant records

### Goals
- Track rent easily
- Know who paid and who didn’t
- Manage multiple houses efficiently
- Receive reminders automatically
- Reduce manual work

---

## 4.2 Tenants
Secondary users.

### Characteristics
- Mostly smartphone users
- Comfortable with QR and mobile apps
- Need payment visibility
- Need reminders

### Goals
- Receive payment reminders
- View payment history
- Confirm payments
- Manage profile information

---

## 4.3 Admin
Platform administrator.

### Responsibilities
- Manage subscriptions
- View analytics
- Monitor system health
- Handle support tickets
- Deactivate abusive accounts
- Manage landlord accounts if necessary

---

# 5. Product Scope

## 5.1 MVP Scope

### Included
- Landlord account system
- Tenant account system
- OTP authentication
- Property management
- Multi-unit property support
- Tenant registration
- QR profile onboarding
- Rent due tracking
- Push notifications
- Payment confirmation workflow
- Offline support
- Background synchronization
- Payment history
- Monthly reports
- Overdue management
- Subscription management
- Admin dashboard
- English and Kinyarwanda support

### Excluded from MVP
- Direct MoMo integration
- Automatic payment confirmations
- Wallet systems
- Caretaker roles
- PDF export
- Lease documents
- AI features
- SMS notifications
- Web landlord dashboard
- Co-owner properties

---

# 6. User Roles and Permissions

## 6.1 Landlord

### Permissions
- Create properties
- Create units/rooms
- Register tenants
- Scan tenant QR codes
- Assign tenants to units
- Approve payments
- View reports
- View overdue tenants
- Manage reminders
- Edit tenant assignments

---

## 6.2 Tenant

### Permissions
- Create profile
- View current rental
- View rental history
- View payment history
- Receive reminders
- Confirm payments
- Share QR profile
- Edit personal information

---

## 6.3 Admin

### Permissions
- View all platform analytics
- Manage subscriptions
- Deactivate users
- View reports
- View system statistics
- Handle support tickets

---

# 7. Platform Architecture

## 7.1 Mobile Application

### Technology
Flutter

### Platforms
- Android (initial)
- iOS ready architecture

### Reasoning
Flutter provides:
- Cross-platform scalability
- Fast UI development
- Excellent performance
- Strong offline support
- Modern UI capabilities

---

## 7.2 Backend

### Primary Backend
Supabase

### Services Used
- PostgreSQL database
- Authentication support
- APIs
- Storage
- Realtime support

---

## 7.3 Authentication Provider

### Technology
Firebase Authentication

### Purpose
- Phone number authentication
- OTP verification
- User identity validation

### Reasoning
Firebase Authentication simplifies:
- OTP generation
- SMS delivery
- Verification management
- Expiration handling
- Security

---

## 7.4 Push Notifications

### Technology
Firebase Cloud Messaging (FCM)

### Purpose
- Payment reminders
- Overdue alerts
- Payment approval notifications
- Subscription reminders

---

# 8. Core Product Features

# 8.1 Authentication System

## Features
- Phone number login
- OTP verification
- Persistent login sessions
- Multi-language onboarding

## User Flow
1. User enters phone number
2. OTP sent via Firebase
3. User verifies OTP
4. Account created or retrieved
5. User redirected based on role

---

# 8.2 Property Management

## Property Types
### Single Unit Property
Example:
- Single family home

### Multi-Unit Property
Example:
- Green Complex
  - Room 1
  - Room 2
  - Room 3

## Features
- Create property
- Add units/rooms
- Edit property details
- Set rent amount
- Set payment date
- Track occupancy status

---

# 8.3 Tenant Registration

## Supported Methods

### Method A – QR Registration
1. Tenant creates account
2. Tenant shares QR code
3. Landlord scans QR code
4. Tenant information auto-fills
5. Landlord assigns unit

### Method B – Manual Registration
Landlord manually enters:
- Name
- Phone number
- National ID
- Unit assignment

---

# 8.4 QR System

## Purpose
Tenant identity/profile sharing only.

## QR Contains
- Tenant ID
- Name
- Phone number
- Profile reference

## Security
Sensitive data should not be directly embedded inside QR.
QR should reference backend profile ID.

---

# 8.5 Payment Workflow

## MVP Payment System
Manual payment confirmation.

## Flow
1. Tenant pays landlord externally (MoMo/manual)
2. Tenant clicks “Paid” button
3. Tenant optionally adds transaction note/reference
4. Landlord receives notification
5. Landlord approves payment
6. Payment marked completed
7. Payment history updated

## Important Principle
Remi does not directly hold money.

---

# 8.6 Payment Scheduling Logic

## Monthly Payment System
Landlord sets fixed payment date.

Example:
- Tenant pays on 23rd
- Future payments due every 23rd

## Advance Payments
Supported.

Example:
- Tenant pays 3 months in advance
- Next payment automatically scheduled after advance period ends

---

# 8.7 Overdue System

## Reminder Workflow

### Before Due Date
- Reminder notifications sent

### After Missed Payment
- Daily reminders for 5 consecutive days

### After 5 Days
- Tenant marked overdue
- Red status indicator displayed
- Both landlord and tenant see overdue status

## Override Option
Landlord can manually stop reminders.

---

# 8.8 Offline Support

## Requirements
Application must:
- work without internet
- allow data entry offline
- allow edits offline
- sync automatically later

## Offline Features
- View tenants
- View properties
- Create records
- Edit records
- Approve payments

## Sync Strategy
Background synchronization when internet reconnects.

---

# 8.9 Payment History

## Tenant Side
View:
- current rent status
- full rental history
- payment history across properties

## Landlord Side
View:
- monthly income
- paid tenants
- overdue tenants
- payment logs

---

# 8.10 Reports

## Monthly Reports
Landlord can view:
- expected income
- collected income
- overdue balances
- occupied units
- vacant units

---

# 9. Admin Dashboard

## Platform
Web dashboard

## Features
- Manage subscriptions
- View landlord statistics
- View tenant statistics
- View revenue analytics
- View active properties
- Handle support tickets
- Deactivate abusive accounts
- Monitor system activity

---

# 10. Monetization Strategy

## Primary Model
Subscription-based.

## Subscription Logic
Landlords pay monthly subscription fee.
Tenants use platform free.

## Possible Pricing Strategy

### Free Tier
- Up to 2 properties

### Standard Tier
- More properties
- Reports
- Advanced tracking

### Premium Tier
- Full management tools
- Priority support
- Future payment automation

---

# 11. Future Payment Integration

## Planned Future Features
- MTN MoMo integration
- Automatic payment confirmation
- Recurring billing
- Payment gateway integration

## Planned Payment Flow
Tenant → Payment Provider → Landlord

Remi may later take:
- subscription revenue
- small processing fees

## Important Restriction
Remi will not function as a wallet or money storage system.

---

# 12. Database Design Overview

## Core Tables

### users
Stores all platform users.

### landlords
Landlord-specific data.

### tenants
Tenant-specific data.

### properties
Stores property information.

### units
Stores individual rentable units.

### leases
Connects tenant to unit/property.

### payments
Stores payment records.

### reminders
Stores reminder logs.

### subscriptions
Stores landlord subscriptions.

### notifications
Stores push notification history.

---

# 13. Data Relationships

## Relationships

### One Landlord
Can own many properties.

### One Property
Can contain many units.

### One Unit
Can have many historical leases.

### One Tenant
Can have many historical leases.

### One Lease
Can contain many payments.

---

# 14. Scalability Considerations

## Architectural Priorities
- Modular design
- Relational database structure
- Indexed queries
- Offline-first approach
- Async notifications
- Queue-ready architecture

## Important Indexed Fields
- phone_number
- national_id
- landlord_id
- tenant_id
- property_id
- due_date

---

# 15. Data Structures

## Hash Maps / Dictionaries
Used for:
- quick tenant lookup
- quick property lookup
- session caching

## Lists/Arrays
Used for:
- payment history
- property units
- reports

## Queues
Used for:
- reminder processing
- notification scheduling
- sync operations

## Priority Queue (Future)
Used for:
- overdue prioritization
- upcoming due payments

---

# 16. Security Requirements

## Requirements
- Secure authentication
- OTP verification
- Protected APIs
- Role-based access
- Secure session storage
- Encrypted communication

## Sensitive Data
Stored securely:
- National IDs
- Phone numbers
- Payment records

## Restrictions
- No card storage
- No wallet balance storage
- No raw payment credentials

---

# 17. UI/UX Principles

## Design Style
Minimal modern + friendly local feel.

## Inspiration
- Uber
- Airbnb

## Design Priorities
- Large buttons
- Minimal typing
- Fast workflows
- Clear navigation
- High readability
- Friendly onboarding
- Low learning curve

## Accessibility
Designed for:
- older landlords
- non-technical users
- mobile-first usage

---

# 18. Localization

## Supported Languages
### MVP
- English
- Kinyarwanda

## Future Possibility
- French

---

# 19. Branding Direction

## Brand Personality
- Modern
- Reliable
- Friendly
- Local
- Trustworthy

## Color Direction
Primary consideration:
- Orange tones

## Visual Feel
- Clean layouts
- Soft rounded corners
- Simple navigation
- Professional but approachable

---

# 20. Recommended Technical Stack

## Mobile App
Flutter

## Database
PostgreSQL via Supabase

## Authentication
Firebase Authentication

## Notifications
Firebase Cloud Messaging

## Admin Dashboard
React.js

## Hosting
Supabase + Vercel/Firebase Hosting

---

# 21. MVP Milestones

## Phase 1 – Setup
- Flutter installation
- Supabase setup
- Firebase setup
- Database schema creation

## Phase 2 – Core Authentication
- OTP login
- User roles
- Session management

## Phase 3 – Property Management
- Properties
- Units
- Tenant assignment

## Phase 4 – Payments
- Payment tracking
- Manual approvals
- Payment history

## Phase 5 – Notifications
- Push notifications
- Due reminders
- Overdue system

## Phase 6 – Offline Support
- Local storage
- Sync engine

## Phase 7 – Admin Dashboard
- Analytics
- Subscription management

## Phase 8 – Testing & Deployment
- Internal testing
- Play Store preparation
- Production deployment

---

# 22. Risks and Challenges

## Technical Risks
- Offline synchronization conflicts
- Notification reliability
- OTP delivery issues
- Data consistency

## Business Risks
- Low landlord adoption
- Subscription resistance
- User onboarding challenges

## Operational Risks
- Support burden
- Scaling infrastructure
- Abuse/spam accounts

---

# 23. Success Metrics

## Product Metrics
- Active landlords
- Active tenants
- Monthly payments tracked
- Reminder engagement rate
- Retention rate

## Business Metrics
- Subscription revenue
- Property growth rate
- Monthly recurring revenue

## Technical Metrics
- Sync reliability
- Crash rate
- Notification delivery success
- App performance

---

# 24. Long-Term Vision

Future versions of Remi may include:
- Full MoMo integration
- Automated payment confirmations
- Caretaker roles
- Maintenance requests
- Smart analytics
- Lease agreements
- Utility management
- Property marketplace
- Agent management
- AI reporting tools
- Smart reminders

---

# 25. Final Product Philosophy

Remi is not intended to be a complicated enterprise system.

Its core philosophy is:

“Simple enough for any landlord to use daily.”

The platform prioritizes:
- usability over complexity
- reliability over feature overload
- real-world workflows over flashy technology
- local practicality over unnecessary sophistication

The success of Remi depends on solving everyday landlord problems better than notebooks, spreadsheets, and WhatsApp chats.

