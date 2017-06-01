public class QuickSort {
  public void partition(int[] arr, int arrLength) {
    if (arr.length == 1) {
      return;
    }
    int pivot = arr[0];
    int L = 1;
    int G = arr.length - 1;
    int temp;
    while (L <= G) {
      if (arr[L] < pivot) {
        L++;
      } else if (arr[G] > pivot) {
        G--;
      } else {
        temp = arr[L];
        arr[L] = arr[G];
        arr[G] = temp;
        L++;
        G--;
      }
    }
    temp = arr[G];
    arr[G] = pivot;
    arr[0] = temp;
  }

  public static void printArr(int[] arr) {
    for (int i = 0; i < arr.length; i++) {
      System.out.println(i + " : " + arr[i]);
    }
  }

  public static void main(String[] args) {
    int[] sort = new int[]{24, 12, 50, 670, 7, 92};
    System.out.println("Unsorted");
    printArr(sort);
    partition(sort);
    System.out.println("Sorted");
    printArr(sort);
  }
}
