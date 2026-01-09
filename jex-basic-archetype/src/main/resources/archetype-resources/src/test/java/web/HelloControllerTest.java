package ${package}.web;

import io.avaje.http.client.HttpClient;
import io.avaje.inject.test.InjectTest;
import jakarta.inject.Inject;
import org.junit.jupiter.api.Test;

import java.net.http.HttpResponse;

import static org.junit.jupiter.api.Assertions.*;
import static org.assertj.core.api.Assertions.*;

@InjectTest
class HelloControllerTest {

  @Inject
  HttpClient client;

  @Test
  void hello() {
    HttpResponse<String> res = client.request().GET().asString();

    assertThat(res.statusCode()).isEqualTo(200);
    assertThat(res.body()).isEqualTo("Hello world!");
  }

}
