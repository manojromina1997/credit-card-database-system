
import java.util.Random;

public class randompassword { // make a java class  sepratly thats return a password

   
    private static final char[] symbols;
    static {   //static block activate first
    StringBuilder tmp = new StringBuilder();
    for (char ch = '0'; ch <= '9'; ++ch)
    {
      tmp.append(ch);
    }
    for (char ch = 'a'; ch <= 'z'; ++ch)
    {
      tmp.append(ch);
    }
      for (char ch = 'A'; ch <= 'Z'; ++ch)
    {
      tmp.append(ch);
    }
    symbols = tmp.toString().toCharArray();
  }   

  private final Random random = new Random();
  
  private final char[] buf;

  public randompassword(int length) {
    if (length < 1)
      throw new IllegalArgumentException("length < 1: " + length);
    buf = new char[length];
  }
 public String nextString() {
    for (int idx = 0; idx < buf.length; ++idx) 
      buf[idx] = symbols[random.nextInt(symbols.length)];
    return new String(buf);
  }
    public static void main(String[] args) {
        randompassword obj=new randompassword(6);//length of password
      String str=  obj.nextString();
        System.out.println(str);
    }
    
}

