import static org.junit.Assert.assertEquals;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import org.junit.Test;

public class HelloWorldTest {
    @Test
    public void testHelloWorld() {
        ByteArrayOutputStream outContent = new ByteArrayOutputStream();
        System.setOut(new PrintStream(outContent));
        HelloWorld.main(null);
        assertEquals("Hello, World!\n", outContent.toString());
    }
}
