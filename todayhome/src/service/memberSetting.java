package service;

public class memberSetting {

	public static void main(String[] args) {
		String[] nameSample = { "Jacob", "Mason", "William", "Jayden", "Noah", "Michael", "Ethan", "Alexander", "Aiden",
				"Daniel", "Anthony", "Matthew", "Elijah", "Joshua", "Liam", "Andrew", "James", "David", "Benjamin",
				"Logan", "Christopher", "Joseph", "Jackson", "Gabriel", "Ryan", "Samuel", "John", "Nathan", "Lucas",
				"Christian", "Jonathan", "Caleb", "Dylan", "Landon", "Isaac", "Gavin", "Brayden", "Tyler", "YLuke",
				"Evan", "Carter", "Nicholas", "Isaiah", "Owen", "Jack", "Jordan", "Brandon", "Wyatt", "Julian", "Aaron",
				"Sophia", "Isabella", "Emma", "Olivia", "Ava", "Emily", "Abigail", "Madison", "Mia", "Chloe",
				"Elizabeth", "Ella", "Addison", "Natalie", "Lily", "Grace", "Samantha", "Avery", "Sofia", "Aubrey",
				"Brooklyn", "Lilian", "Victoria", "Evelyn", "Hannah", "Alexis", "Charlotte", "Zoey", "Leah", "Amelia",
				"Zoe", "Hailey", "Layla", "Gabriella", "Nevaeh", "Kaylee", "Alyssa", "Anna", "Sarah", "Allison",
				"Savannah", "Ashley", "Audrey", "Tayler", "Brianna", "Aaliyah", "Riley", "Camila", "Khloe", "ClaireAce",
				"Adela", "Agatha", "Aggie", "Aida", "Ailish", "Aimee", "Alice", "Alika", "Allie", "Amanda", "Andra",
				"Angel", "Angelica", "Anika", "Anna", "Annie", "arbara", "Barbie", "Becky", "Bella", "Belle", "Bessie",
				"Biana", "Bianca", "Bibiane", "Bonita", "Calla", "Callia", "Camilla", "Cara", "Carmen", "Casey",
				"Catherine", "Celina", "Chloe", "Cindy", "Clara", "Connie", "Crystal", "Cutie", "Daria", "Doris",
				"Dorothy", "Edeline", "Eden", "Eilis", "Eldora", "Elisha", "Elizabeth", "Elle", "Elsa", "Esther", "Eva",
				"Felice", "Filia", "Floria", "Gemma", "Gloria", "Grace", "Harmony", "Heba", "Helen", "Helia", "Hera",
				"Iris", "Isabel", "Isadora", "Isis", "Jane", "Jasmine", "Jennie", "Jerry", "Jessica", "Jessie",
				"Johanna", "Juliana", "Juliet", "Kara", "Karis", "Kassia", "Kate", "Kelley", "Kyra", "Lara", "Lavina",
				"Lidia", "Lily", "Linda", "Lisa", "Lottie", "Lucia", "Lucy", "Luna", "Madonna", "Maggie", "Malissa",
				"Margaret", "Mary", "Mathilda", "Melina", "Meriel", "Minnie", "Miranda", "Molly", "Mulan", "Nana",
				"Nara", "Olive", "Pamela", "Peppi", "Phila", "Pinky", "Raina", "Remy", "Sally", "Sandy", "Sarah",
				"Sasha", "Scarlet", "Selina", "Serena", "Shaina", "Silky", "Sonia", "Sophie", "Stella", "Sweetie",
				"Sylvia", "Terra", "Tess", "Trisha", "Vanessa", "Velika", "Vera", "Veronica", "Victoria", "Violet",
				"Wendy", "Adam", "Adelio", "Alan", "Albert", "Alex", "Alfred", "Alvin", "Andra", "Andrew", "Andy",
				"Anthony", "Apollo", "Arnold", "Arvid", "Baldy", "Barney", "Baron", "Basil", "Billy", "Bliss", "Boris",
				"Bright", "Bruno", "Buddy", "Caley", "Calix", "Champ", "Charles", "Charlie", "Chase", "Clark",
				"Crimson", "Darin", "Dario", "Darwin", "Dave", "David", "Dean", "Dennis", "Denver", "Dick", "Dino",
				"Douglas", "Duke", "Dustin", "Edan", "Edward", "Edwin", "Elroy", "Emilie", "Eric", "Esteban", "Evan",
				"Favian", "Felix", "Fidelio", "George", "Gilbert", "Gregory", "Harold", "Hollis", "Hubert", "Isaac",
				"Jack", "Jackson", "Jaclyn", "Jade", "Jefferson", "Jerry", "Jodie", "Jolly", "Joy", "Justin", "Karis",
				"Kellan", "Kevin", "Lamis", "Leo", "Lloyd", "Lonnie", "Louis", "Malo", "Mickey", "Mighty", "Morris",
				"Neal", "Nero", "Nicholas", "Nicky", "Oscar", "Patrick", "Phillip", "Pluto", "Ralph", "Rex", "Richard",
				"Ricky", "Rio", "Robbie", "Robert", "Robin", "Rocky", "Romeo", "Roy", "Rudy", "Ryan", "Sam",
				"Sebastian", "Severino", "Simon", "Solomon", "Steven", "Sylvester", "Talli", "Ted", "Thomas", "Vincent",
				"Vito", "Walter", "William", "Wily", "Winston", "Zeki", "Zeus" };
		// STring nameSameple은 362개
		
		int ranName = (int)(Math.random()*363);
		int ranId = (int)(Math.random()*100);
		String name = nameSample[ranName];
		System.out.println("random값 "+ranName+"번째 이름은 "+name);
		String id = name+ranId;
		System.out.println("random값 "+ranId+"번째 아이디는 "+id);
	}
}
