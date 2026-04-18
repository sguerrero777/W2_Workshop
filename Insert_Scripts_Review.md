# Generating & Reviewing SQL Insert Scripts for Lana's Dog-walking Business
Group Members: Sha'Rya Weaver, Vesna Cari, Maia Black, Sharleen Guerrero

**How was your experience with using AI chat to help create sample data? Was it a 
useful troubleshooting tool? What mistakes did it make?:**

a) Overall, our experience with using AI chat to help create sample data is that it heavily relies on the descriptiveness of the sample provided. For instance, Maia's AI tool provided detailed and unique notes for Walk_Logs and Dogs because her sample data was creative. On the other hand, the other group members were shorter with their notes because the sample data provided was basic. Although the AI sometimes made mistakes due to lack of context on how tables were structured during creation, it was helpful for troubleshooting. Sha'Rya accidentally had duplicates, which the AI helped resolved; which is why her script includes TRUNCATE for some tables. A common mistake it made for all members was changing the names for attributes, which caused errors but were easily resolved.

**How does your sample data look? What things can you start to determine about this 
business, based on the sample records you’ve created?**

b) Overall, our sample data looks organized and naming patterns for the dogs are consistent across all members' data samples. However, Shar'Rya and Vesna's data sample focused on a general service area, confining it to the same state while Maia and Sharleen's data sample created the service area across different states. This would be unrealistic for a small dog-walking business, so the data would have to be changed to at minimum be in the same state. 

**Everyone in your small group started from the same brainstorming document. After 
working independently on implementation, how different have your databases 
turned out? What are the most notable differences? :**

c) Although everyone started from the same brainstorming document, our databases have a few key differences when it comes to actual implementation. Our logical and conceptual models were identical, but the level of detail across databases differed due to which AI tool was used and our prompt engineering. Maia and I used Claude, while Vesna and Sha'Rya used ChatGPT. A notable difference was in the richness of the sample data. For instance, Claude tended to generate more descriptive and detailed records, particularly in fields like Walk_Logs and Dog notes, when given creative prompts. However, our interpretations of the business's service area differed; Sha'Rya and Vesna kept their data within the same state, while Maia and I spread records across multiple states, which would be unrealistic for a small local dog-walking business. Overall, this workshop was fun and and deepened our understanding of database design. 
