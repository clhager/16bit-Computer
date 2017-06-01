public class Fibonacci {

  public int modulo(int n, int mod) {
    while (n >= mod) {
      n -= mod;
    }
    return n;
  }

  public static void main(String[] args) {
    int curr = 0;
    int next = 1;
    int out = 0;
    while (curr <= 9999) {
        print(out, curr);
        int temp = next;
        next += curr;
        curr = temp;
        out = modulo(out + 1, 6);
    }
  }
}
