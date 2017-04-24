 package refreshingmemory;
import java.security.SecureRandom;
import java.math.BigInteger;
import java.util.Random;
import org.apache.commons.lang3.RandomStringUtils;

public class RandomString {

    public static void main(String[] args) {

  String string = RandomStringUtils.random(64, false, true);

  System.out.println("Random 0 = " + string);

  string = RandomStringUtils.randomAlphabetic(64);

  System.out.println("Random 1 = " + string);

  string = RandomStringUtils.randomAscii(32);

  System.out.println("Random 2 = " + string);

  string = RandomStringUtils.random(32, 0, 20, true, true, "bj81G5RDED3DC6142kasok".toCharArray());
  System.out.println("Random 3 = " + string);
    }
}
