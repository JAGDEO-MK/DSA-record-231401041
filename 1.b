#include <stdio.h>
int main() {
// Variables to store the coordinates
int x, y;
// Prompt the user to enter the coordinates
printf(&quot;Enter the coordinates (x y): &quot;);
// Read the input coordinates from the user
scanf(&quot;%d %d&quot;, &amp;x, &amp;y);
// Determine the quadrant or axis in which the point lies
if (x &gt; 0 &amp;&amp; y &gt; 0) {
printf(&quot;The coordinate point (%d,%d) lies in the First quadrant.\n&quot;, x, y);
} else if (x &lt; 0 &amp;&amp; y &gt; 0) {
printf(&quot;The coordinate point (%d,%d) lies in the Second quadrant.\n&quot;, x, y);
} else if (x &lt; 0 &amp;&amp; y &lt; 0) {
printf(&quot;The coordinate point (%d,%d) lies in the Third quadrant.\n&quot;, x, y);
} else if (x &gt; 0 &amp;&amp; y &lt; 0) {
printf(&quot;The coordinate point (%d,%d) lies in the Fourth quadrant.\n&quot;, x, y);
} else if (x == 0 &amp;&amp; y == 0) {
printf(&quot;The coordinate point (%d,%d) is at the Origin.\n&quot;, x, y);
} else if (x == 0) {
printf(&quot;The coordinate point (%d,%d) lies on the Y-axis.\n&quot;, x, y);
} else if (y == 0) {
printf(&quot;The coordinate point (%d,%d) lies on the X-axis.\n&quot;, x, y);
}
return 0;
}
