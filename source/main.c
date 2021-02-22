#include "definitions.h"

void app_main()
{
    ESP_LOGI("ESP32", "Hello, Wolrd!");

    volatile uint32_t i = 0;
    while (1)   {
        ESP_LOGI("Timer: %d", i++);
        vTaskDelay(1000 / portTICK_RATE_MS);
    }
}
