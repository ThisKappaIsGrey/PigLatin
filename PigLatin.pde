import java.util.*;
import java.lang.*;
public void setup() {
	String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	} 
	/*String lines[] = loadStrings("LowellHymn.txt");
	String newLine = "";
	String newWord = "";*/
	/*for(int i = 0; i < lines.length; i++){
		newLine = "";
		newWord = "";
		for(int x = 0; x < lines[i].length(); x++){
			if(Character.isLetter(lines[i].charAt(x)) || lines[i].charAt(x) == '\'' || lines[i].charAt(x) == '-'){
				newWord += lines[i].substring(x, x+1);
			}else{
				newLine += pigLatin(newWord) + lines[i].substring(x, x+1);
				newWord = "";
			}
		}
		System.out.println(newLine);
	}*/
}
public void draw()
{
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	 for(int i = 0; i < sWord.length(); i++ ){
    switch(sWord.charAt(i)){
      case 'a': return i;
      case 'e': return i;
      case 'i': return i;
      case 'o': return i;
      case 'u': return i;
      case 'A': return i;
      case 'E': return i;
      case 'I': return i;
      case 'O': return i;
      case 'U': return i; 
    }
  }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
	if(findFirstVowel(sWord) == -1)
	{
		return sWord + "ay";
	}
	else if(findFirstVowel(sWord) == 0)
	{
		return sWord + "way";
	}else if(sWord.substring(0, 2).equals("qu") || sWord.substring(0, 2).equals("Qu")){
		if(Character.isUpperCase(sWord.charAt(0))){
			return sWord.substring(2, 3).toUpperCase()+ sWord.substring(3) + "quay";
		}
		return sWord.substring(2) + "quay";
	}else{
		if(Character.isUpperCase(sWord.charAt(0))){
			return sWord.substring(findFirstVowel(sWord), findFirstVowel(sWord) +1).toUpperCase() + sWord.substring(findFirstVowel(sWord) +1) +  sWord.substring(0, findFirstVowel(sWord)).toLowerCase() + "ay"; 
		}
		return sWord.substring(findFirstVowel(sWord)) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
	}
}
