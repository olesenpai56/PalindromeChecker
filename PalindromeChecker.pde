public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
 String eu = lowerCase(onlyLetters(noSpace(word)));
  if(eu.equals(reverse(conversion))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    //your code here
    for(int i=str.length()-1; i>=0; i--){
     sNew=sNew+ str.substring(i,i+1);
    }
    return sNew;
}
public String noSpace(String bruh){
String c = "";
 for(int i =0; i<= bruh.length()-1; i++){
   if(bruh.charAt(i) != ' '){
     c= c+bruh.charAt(i);
   }
  }return c;
}
 
public String onlyLetters(String druh){
String d = "";
for (int i =0; i<= druh.length()-1;i++){
   if(Character.isLetter(druh.charAt(i))){
     d=d+druh.charAt(i);
   }
 }return d;
}

public String lowerCase(String zruh){
return zruh.toLowerCase();
}



