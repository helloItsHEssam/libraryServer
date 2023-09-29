//
//  Data.swift
//  
//
//  Created by Hessam Mahdiabadi on 9/29/23.
//

import Foundation

// persons

fileprivate let tolkienImage = Image(id: 101, url: "101.jpg")
fileprivate let tolkien = Person(id: 101, name: "J.R.R. Tolkien", image: tolkienImage, description: "J.R.R. Tolkien was born on 3rd January 1892. After serving in the First World War, he became best known for The Hobbit and The Lord of the Rings, selling 150 million copies in more than 40 languages worldwide. Awarded the CBE and an honorary Doctorate of Letters from Oxford University, he died in 1973 at the age of 81.")

fileprivate let ishiguroImage = Image(id: 102, url: "102.jpeg")
fileprivate let ishiguro = Person(id: 102, name: "Kazuo Ishiguro", image: ishiguroImage, description: "KAZUO ISHIGURO was born in Nagasaki, Japan, in 1954 and moved to Britain at the age of five. His eight previous works of fiction have earned him many honors around the world, including the Nobel Prize in Literature and the Booker Prize. His work has been translated into over fifty languages, and The Remains of the Day and Never Let Me Go, both made into acclaimed films, have each sold more than 2 million copies. He was given a knighthood in 2018 for Services to Literature. He also holds the decorations of Chevalier de l'Ordre des Arts et des Lettres from France and the Order of the Rising Sun, Gold and Silver Star from Japan.")

fileprivate let haigImage = Image(id: 103, url: "103.jpg")
fileprivate let haig = Person(id: 103, name: "Matt Haig", image: haigImage, description: "Matt Haig is the internationally bestselling author of the novels The Midnight Library, How to Stop Time, The Humans, The Radleys, children's novel A Boy Called Christmas, and memoir Reasons to Stay Alive. His latest novel is The Life Impossible, which will be published in summer 2024. His work has been translated into over fifty languages.")

// books

fileprivate let hobbitImage = Image(id: 1, url: "1.jpg")
fileprivate let hobbit = Book(id: 1,
                  isbn: "0618260307",
                  name: "The Hobbit (The Lord of the Rings)",
                  description: """
                  In a hole in the ground, there lived a hobbit. So begins one of the most beloved and delightful tales in the English language.
                  Set in the imaginary world of Middle-earth, at once a classic myth and a modern fairy tale, J.R.R. Tolkien's The Hobbit is one of literature's most enduring and well-loved novels. The text in this 372-page paperback edition is based on that first published in Great Britain by Collins Modern Classics and includes a note on the text by Douglas A. Anderson.
                  Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely traveling any farther than his pantry or cellar. But his contentment is disturbed when the wizard Gandalf and a company of dwarves arrive on his doorstep one day to whisk him away on an adventure. They have launched a plot to raid the treasure hoard guarded by Smaug the Magnificent, a large and very dangerous dragon.
                  Bilbo reluctantly joins their quest, unaware that on his journey to the Lonely Mountain he will encounter both a magic ring and a frightening creature known as Gollum.
""",
                  price: 5.99, language: "English", images: hobbitImage, authors: [tolkien])

fileprivate let fellowShipImage = Image(id: 2, url: "2.jpg")
fileprivate let fellowShip = Book(id: 2,
                      isbn: "0358380235",
                      name: "The Fellowship of the Ring: Being the First Part of The Lord of the Rings (The Lord of the Rings, 1)",
                      description: """
Begin your journey into Middle-earth.
A New Legend Begins on Prime Video, in The Lord of the Rings: The Rings of Power.
The Fellowship of the Ring is the first part of J.R.R. Tolkien’s epic adventure The Lord of the Rings.
One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them.
J.R.R. Tolkien’s classic epic fantasy trilogy The Lord of the Rings, now with a fresh new package for Book 1, The Fellowship of the Ring.
In ancient times, the Rings of Power were crafted by the Elven-smiths, and Sauron, the Dark Lord, forged the One Ring, filling it with his own power so that he could rule all others. But the One Ring was taken from him, and though he sought it throughout Middle-earth, it remained lost to him. After many ages, it fell into the hands of Bilbo Baggins, as told in The Hobbit.
In a sleepy village in the Shire, young Frodo Baggins finds himself faced with an immense task, as his elderly cousin Bilbo entrusts the ring to his care. Frodo must leave his home and make a perilous journey across Middle-earth to the Cracks of Doom, there to destroy the Ring and foil the Dark Lord in his evil purpose.
""", price: 11.99, language: "English", images: fellowShipImage, authors: [tolkien])

fileprivate let twoTowerImage = Image(id: 4, url: "4.jpg")
fileprivate let twoTower = Book(id: 4,
                    isbn: "0358380243",
                    name: "The Two Towers: Being the Second Part of The Lord of the Rings (The Lord of the Rings, 2)",
                    description: """
Begin your journey into Middle-earth...
A New Legend Begins on Prime Video, in The Lord of the Rings: The Rings of Power.
The Two Towers is the second part of J.R.R. Tolkien’s epic adventure, The Lord of the Rings.
One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them.
J.R.R. Tolkien’s classic epic fantasy trilogy The Lord of the Rings, now with a fresh new package for Book 2, The Two Towers.
Frodo and his Companions of the Ring have been beset by danger during their quest to prevent the Ruling Ring from falling into the hands of the Dark Lord by destroying it in the Cracks of Doom. They lost the wizard Gandalf in the Mines of Moria. And Boromir, seduced by the power of the Ring, tried to seize it by force. While Frodo and Sam made their escape, the rest of the company was attacked by Orcs.
Now they continue their journey alone down the great River Anduin—alone, that is, save for the mysterious creeping figure that follows wherever they go.
""", price: 12.99, language: "English", images: twoTowerImage, authors: [tolkien])

fileprivate let returnTheKingImage = Image(id: 3, url: "3.jpg")
fileprivate let returnTheKing = Book(id: 3,
                    isbn: "0358380251",
                    name: "The Return of the King: Being the Third Part of The Lord of the Rings (The Lord of the Rings, 3)",
                    description: """
Begin your journey into Middle-earth...
A New Legend Begins on Prime Video, in The Lord of the Rings: The Rings of Power.
The Return of the King is the third part of J.R.R. Tolkien’s epic adventure, The Lord of the Rings.
One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them.
J.R.R. Tolkien’s classic epic fantasy trilogy The Lord of the Rings, now with a fresh new package for Book 3, The Return of the King.
As the Shadow of Mordor grows across the land, the Companions of the Ring have become involved in separate adventures. Aragorn, revealed as the hidden heir of the ancient Kings of the West, has joined with the Riders of Rohan against the forces of Isengard and takes part in the desperate victory of the Hornburg.
Merry and Pippin, captured by Orcs, escape into Fangorn Forest and there encounter the Ents. Gandalf has miraculously returned and defeated the evil wizard, Saruman. Sam has left his master for dead after a battle with the giant spider, Shelob; but Frodo is still alive—now in the foul hands of the Orcs. And all the while the armies of the Dark Lord are massing as the One Ring draws ever nearer to the Cracks of Doom.
""", price: 6.15, language: "English", images: returnTheKingImage, authors: [tolkien])

fileprivate let kelaraImage = Image(id: 8, url: "8.jpg")
fileprivate let kelara = Book(id: 8,
                    isbn: "0593311299",
                    name: "Klara and the Sun",
                    description: """
Here is the story of Klara, an Artificial Friend with outstanding observational qualities, who, from her place in the store, watches carefully the behavior of those who come in to browse, and of those who pass on the street outside. She remains hopeful that a customer will soon choose her. Klara and the Sun is a thrilling book that offers a look at our changing world through the eyes of an unforgettable narrator, and one that explores the fundamental question: what does it mean to love?
""", price: 13.99, language: "English", images: kelaraImage, authors: [ishiguro])

fileprivate let neverLetMeGoImage = Image(id: 7, url: "7.jpg")
fileprivate let neverLetMeGo = Book(id: 7,
                    isbn: "0571335772",
                    name: "Never Let Me Go",
                    description: """
Designed to meet the requirements for students at GCSE and A level, this accessible educational edition offers the complete text of Never Let Me Go with a comprehensive study guide. Intended for individual study as well as class use, Geoff Barton's guide:
- clearly introduces the context of the novel and its author; - examines in detail its themes, characters and structure; - looks at the novel in the author's own words, and at different critical receptions; - provides glossaries and test questions to prompt deeper thinking.
In one of the most memorable novels of recent years, Kazuo Ishiguro imagines the lives of a group of students growing up in a darkly skewed version of contemporary England. Narrated by Kathy, now thirty-one, Never Let Me Go hauntingly dramatises her attempts to come to terms with her childhood at a seemingly idyllic school, Hailsham, and with the fate that has always awaited her and her closest friends in the wider world. A story of love, friendship and memory, Never Let Me Go is charged throughout with a sense of the fragility of life.
""", price: 15.01, language: "English", images: neverLetMeGoImage, authors: [ishiguro])

fileprivate let remainOfDayImage = Image(id: 6, url: "6.jpg")
fileprivate let remainOfDay = Book(id: 6,
                    isbn: "0571258247",
                    name: "The Remains of the Day",
                    description: """
This is Kazuo Ishiguro's profoundly compelling portrait of a butler named Stevens. Stevens, at the end of three decades of service at Darlington Hall, spending a day on a country drive, embarks as well on a journey through the past in an effort to reassure himself that he has served humanity by serving the "great gentleman," Lord Darlington. But lurking in his memory are doubts about the true nature of Lord Darlington's "greatness," and much graver doubts about the nature of his own life.

A contemporary classic, The Remains of the Day is Kazuo Ishiguro's beautiful and haunting evocation of life between the wars in a Great English House.   In the summer of 1956, Stevens, the ageing butler of Darlington Hall, embarks on a leisurely holiday that will take him deep into the countryside and into his past.
""", price: 12.99, language: "English", images: remainOfDayImage, authors: [ishiguro])

fileprivate let WhenWeImage = Image(id: 5, url: "5.jpg")
fileprivate let WhenWe = Book(id: 5,
                    isbn: "0375724400",
                    name: "When We Were Orphans",
                    description: """
Born in early-twentieth-century Shanghai, Banks was orphaned at the age of nine after the separate disappearances of his parents. Now, more than twenty years later, he is a celebrated figure in London society; yet the investigative expertise that has garnered him fame has done little to illuminate the circumstances of his parents' alleged kidnappings. Banks travels to the seething, labyrinthine city of his memory in hopes of solving the mystery of his own, painful past, only to find that war is ravaging Shanghai beyond recognition-and that his own recollections are proving as difficult to trust as the people around him.
""", price: 11, language: "English", images: WhenWeImage, authors: [ishiguro])

fileprivate let midnightLibraryImage = Image(id: 9, url: "9.jpg")
fileprivate let midnightLibrary = Book(id: 9,
                    isbn: "0525559493",
                    name: "The Midnight Library",
                    description: """
Somewhere out beyond the edge of the universe there is a library that contains an infinite number of books, each one the story of another reality. One tells the story of your life as it is, along with another book for the other life you could have lived if you had made a different choice at any point in your life. While we all wonder how our lives might have been, what if you had the chance to go to the library and see for yourself? Would any of these other lives truly be better?

In The Midnight Library, Matt Haig's enchanting blockbuster novel, Nora Seed finds herself faced with this decision. Faced with the possibility of changing her life for a new one, following a different career, undoing old breakups, realizing her dreams of becoming a glaciologist; she must search within herself as she travels through the Midnight Library to decide what is truly fulfilling in life, and what makes it worth living in the first place.
""", price: 13.99, language: "English", images: midnightLibraryImage, authors: [haig])


let dbPersons = [tolkien, ishiguro, haig]
let dbBooks = [hobbit, fellowShip, twoTower,
               returnTheKing, WhenWe, remainOfDay,
               neverLetMeGo, kelara, midnightLibrary]
