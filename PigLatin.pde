import java.util.*;

public void setup() {
	/*String lines[] = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) {
	  System.out.println(pigLatin(lines[i]));
	} */
	String lines[] = loadStrings("LowellHymn.txt");
	for(int i = 0; i < lines.length; i++){
		for(int x = 0; x < lines[i].length(); i++){
			int index1 = x;
			int index2 = x;
			if(lines[i].charAt(x) != ' ' || lines[i].charAt(x) != ',' || lines[i].charAt(x) != '.'){
					index2++;
			}
		}
	}
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
	}else if(sWord.substring(0, 2).equals("qu")){
		return sWord.substring(2) + "quay";
	}else{
		return sWord.substring(1) + sWord.substring(0, 1) + "ay";
	}
}
