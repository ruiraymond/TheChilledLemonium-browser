const { contextBridge, ipcRenderer } = require('electron');

contextBridge.exposeInMainWorld('nativeBrowser', {
  onAction(handler) {
    ipcRenderer.on('browser-action', (_event, payload) => handler(payload));
  }
});
