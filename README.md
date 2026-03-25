# Week 10B Starter Code

This is the starter code for the Week 10B in-class demo (Provider From Scratch: Wizard Directory).

## Setup Instructions

1. Create a new Flutter project in VS Code (use the empty application template)
2. Replace the contents of `lib/main.dart` with the `main.dart` file from this repo
3. Run the following commands in the terminal to install packages:
   - `flutter pub add http`
   - `flutter pub add provider`
4. Uncomment the three import lines near the top of `main.dart`
5. Run the app on your emulator

## What's Included

The starter code has:
- The API URL already defined (cached copy on RIT servers)
- A basic app shell: AppBar with a clear button, a "Load Characters" button, and a placeholder where the list will go
- TODO comments marking where you'll add code
- A hint listing the fields you'll need for the `HPCharacter` model class

## In Class

We'll build three things from scratch, planning the architecture before writing code:

**Part 1 - Data Model (`HPCharacter`):**
- A class with typed properties matching the API fields
- Computed properties like `displayName` and `hasChildren`

**Part 2 - Provider (`CharacterProvider`):**
- A ChangeNotifier that owns the character list
- `fetchCharacters()` to call the API and parse JSON into model objects
- `clear()` to reset the list
- `notifyListeners()` to trigger UI rebuilds

**Part 3 - Wire Up the UI:**
- Register the provider with `ChangeNotifierProvider`
- `context.read()` for button actions (fetch, clear)
- `context.watch()` for reactive display (ListView)
- A detail dialog that reuses the `HPCharacter` model

## The API

We're using a cached copy to avoid overloading the source during class:
- **In-class URL:** `https://people.rit.edu/~jxtadm/340/hpcharacters.json`
- **Live API:** [https://potterapi-fedeperin.vercel.app](https://potterapi-fedeperin.vercel.app) — endpoints include `/en/characters`, `/en/spells`, `/en/houses`, `/en/books`

For your own projects, use the live API directly.

## Participation Credit

To get GitHub Classroom participation credit, you can either:
- Commit just your updated `main.dart` file, OR
- Add your entire Flutter project folder

Both options work!
