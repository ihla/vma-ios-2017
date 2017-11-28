import Foundation

struct Note: Codable {
    let title: String
    let text: String
    let date: Date
}

extension Note: CustomStringConvertible {
    var description: String {
        return "Note{title:\(title), text:\(text), datew:\(date)}"
    }
}

let note = Note(title: "Hello", text: "World", date: Date())
print(note)

// serialization
let encoder = PropertyListEncoder()
let encodedNote = try? encoder.encode(note)

var notePropertyListFile: URL = {
    let fm = FileManager.default
    let docDir = fm.urls(for: .documentDirectory, in: .userDomainMask).first!
    print(docDir)
    let notePropertyListFile = docDir.appendingPathComponent("note").appendingPathExtension("plist")
    print(notePropertyListFile)
    return notePropertyListFile
}()

// deserialization
let decoder = PropertyListDecoder()
if let encodedNote = encodedNote {
    if let decodedNote = try? decoder.decode(Note.self, from: encodedNote) {
        print(decodedNote)
    }
    try encodedNote.write(to: notePropertyListFile)
}

let newNote = Note.self.init(title: "", text: "", date: Date())

let notes = [Note(title: "Hello", text: "World", date: Date()), Note(title: "I am", text: "a BOLT", date: Date())]

let encodedNotes = try? encoder.encode(notes)

if let encodedNotes = encodedNotes {
    if let decodedNotes = try? decoder.decode(Array<Note>.self, from: encodedNotes) {
        print(decodedNotes)
    }
}

if let savedNoteData = try? Data(contentsOf: notePropertyListFile) {
    if let savedNote = try? decoder.decode(Note.self, from: savedNoteData) {
        print(savedNote)
    }
}











