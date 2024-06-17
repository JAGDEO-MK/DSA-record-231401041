#include <stdio.h>
#include <math.h>

// Union for different shapes
union Shape {
    struct {
        double radius;
    } circle;
    struct {
        double side_length;
    } square;
    struct {
        double length;
        double width;
    } rectangle;
};

// Function to calculate area based on shape type
double calculate_area(union Shape shape, int type) {
    switch (type) {
        case 0: // Circle
            return M_PI * shape.circle.radius * shape.circle.radius;
        case 1: // Square
            return shape.square.side_length * shape.square.side_length;
        case 2: // Rectangle
            return shape.rectangle.length * shape.rectangle.width;
        default:
            return 0.0;
    }
}

// Function to print areas of all shapes
void print_areas(union Shape shapes[], int types[], int num_shapes) {
    printf("Areas of shapes:\n");
    for (int i = 0; i < num_shapes; ++i) {
        double area = calculate_area(shapes[i], types[i]);
        switch (types[i]) {
            case 0:
                printf("Area of circle %d: %.2f\n", i + 1, area);
                break;
            case 1:
                printf("Area of square %d: %.2f\n", i + 1, area);
                break;
            case 2:
                printf("Area of rectangle %d: %.2f\n", i + 1, area);
                break;
        }
    }
}

// Function to find the largest area among shapes
double find_largest_area(union Shape shapes[], int types[], int num_shapes) {
    double max_area = 0.0;
    for (int i = 0; i < num_shapes; ++i) {
        double area = calculate_area(shapes[i], types[i]);
        if (area > max_area) {
            max_area = area;
        }
    }
    return max_area;
}

int main() {
    int num_shapes;
    printf("Enter the number of shapes: ");
    scanf("%d", &num_shapes);

    union Shape shapes[num_shapes];
    int types[num_shapes];

    for (int i = 0; i < num_shapes; ++i) {
        printf("Enter type of shape (0 for circle, 1 for square, 2 for rectangle) for shape %d: ", i + 1);
        scanf("%d", &types[i]);

        switch (types[i]) {
            case 0:
                printf("Enter radius of circle: ");
                scanf("%lf", &shapes[i].circle.radius);
                break;
            case 1:
                printf("Enter side length of square: ");
                scanf("%lf", &shapes[i].square.side_length);
                break;
            case 2:
                printf("Enter length and width of rectangle: ");
                scanf("%lf %lf", &shapes[i].rectangle.length, &shapes[i].rectangle.width);
                break;
            default:
                break;
        }
    }

    print_areas(shapes, types, num_shapes);
    
    double largest_area = find_largest_area(shapes, types, num_shapes);
    printf("Largest area among the shapes: %.2f\n", largest_area);

    return 0;
}
