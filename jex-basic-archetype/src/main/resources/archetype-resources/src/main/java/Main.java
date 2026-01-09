package ${package};

import io.avaje.inject.BeanScope;
import io.avaje.jex.Jex;

public class Main {
  public static void main(String[] args) {

    Jex.create()
      .configureWith(BeanScope.builder().build())
      .port(9090)
      .start();
  }
}
