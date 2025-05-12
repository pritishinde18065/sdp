class Pizza:
    def __init__(self):
        self.dough = None
        self.sauce = None
        self.topping = None

    def __str__(self):
        return f"Pizza with {self.dough} dough, {self.sauce} sauce, and {self.topping} topping."

class PizzaBuilder:
    def __init__(self):
        self.pizza = Pizza()

    def set_dough(self, dough):
        self.pizza.dough = dough
        return self

    def set_sauce(self, sauce):
        self.pizza.sauce = sauce
        return self

    def set_topping(self, topping):
        self.pizza.topping = topping
        return self

    def build(self):
        return self.pizza


builder = PizzaBuilder()
pizza = builder.set_dough("thin").set_sauce("tomato").set_topping("mozzarella").build()
print(pizza)
builder1 = PizzaBuilder()
pizza1 = builder1.set_sauce("tomato").build()
print(pizza1)











class Computer:
    def __init__(self):
        # Required components
        self.cpu = None
        self.gpu = None
        self.internal_memory = None
        self.os = None


        # Optional components
        self.external_memory = None
        self.touch_screen = None
        self.bluetooth_mouse = None
        self.bluetooth_keyboard = None




    def __str__(self):
        return (f"Computer with:\n"
                f"- CPU: {self.cpu}\n"
                f"- GPU: {self.gpu}\n"
                f"- Internal Memory: {self.internal_memory}\n"
                f"- External Memory: {self.external_memory}\n"
                f"- OS: {self.os}\n"
                f"- Touch Screen: {self.touch_screen}\n"
                f"- Bluetooth Mouse: {self.bluetooth_mouse}\n"
                f"- Bluetooth Keyboard: {self.bluetooth_keyboard}")
class ComputerBuilder:
    def __init__(self):
        self.computer = Computer()


    def set_cpu(self, cpu):
        self.computer.cpu = cpu
        return self


    def set_gpu(self, gpu):
        self.computer.gpu = gpu
        return self


    def set_internal_memory(self, memory):
        self.computer.internal_memory = memory
        return self


    def set_os(self, os):
        self.computer.os = os
        return self


    def set_external_memory(self, memory):
        self.computer.external_memory = memory
        return self


    def set_touch_screen(self, enabled):
        self.computer.touch_screen = enabled
        return self


    def set_bluetooth_mouse(self, enabled):
        self.computer.bluetooth_mouse = enabled
        return self


    def set_bluetooth_keyboard(self, enabled):
        self.computer.bluetooth_keyboard = enabled
        return self


    def build(self):
        return self.computer




# Usage examples
builder = ComputerBuilder()
computer = (builder
            .set_cpu("Intel i7")
            .set_gpu("NVIDIA RTX 3080")
            .set_internal_memory(16)
            .set_os("Windows 11")
            .set_external_memory(1000)
            .set_touch_screen(True)
            .set_bluetooth_mouse(True)
            .set_bluetooth_keyboard(True)
            .build())


print(computer)


builder1 = ComputerBuilder()
computer1 = (builder1
             .set_cpu("AMD Ryzen 5")
             .set_gpu("Integrated")
             .set_internal_memory(8)
             .set_os("Ubuntu 22.04")
             .build())


print("\n" + str(computer1))
