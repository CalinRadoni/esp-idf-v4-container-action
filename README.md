# ESP-IDF v4.x build

GitHub Action to build your ESP32 code using the official Docker container from Espressif.

From [espressif/idf tags](https://hub.docker.com/r/espressif/idf/tags) I have implemented:

- latest
- v4.2 and release-v4.2
- v4.1 and release-v4.1

## Outputs

### `result`

The exit code of `idf.py build` command.

## Example usage

Use the tag to select the desired version of the `espressif/idf` Docker container.
For `espressif/idf:v4.1` use:

```yml
uses: CalinRadoni/esp-idf-v4-container-action@v4.1
```

To display the exit code use:

```yml
- name: Build the code
  uses: CalinRadoni/esp-idf-v4-container-action@v4.1
  id: esp-idf-build

- name: Show the exit code
  run: echo "The exit code was ${{ steps.esp-idf-build.outputs.result }}"
```

For more complex usage including:

- the overriding of the entrypoint script
- ESP-IDF components in external repositories
- adding a badge in the README.md page

see the [ESP32BoardManager](https://github.com/CalinRadoni/ESP32BoardManager) repository.
