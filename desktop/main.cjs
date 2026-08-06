const {app,BrowserWindow,Menu,shell,screen}=require('electron');
const path=require('node:path');

const single=app.requestSingleInstanceLock();
if(!single){app.quit();process.exit(0)}
let mainWindow=null;
function createWindow(){
  const work=screen.getPrimaryDisplay().workAreaSize;
  mainWindow=new BrowserWindow({
    width:Math.min(1440,work.width),height:Math.min(900,work.height),minWidth:960,minHeight:600,
    backgroundColor:'#0b1016',show:false,autoHideMenuBar:true,title:'GBA Zombie Apocalypse',
    webPreferences:{nodeIntegration:false,contextIsolation:true,sandbox:true,webSecurity:true,spellcheck:false,backgroundThrottling:false}
  });
  mainWindow.setMenuBarVisibility(false);
  mainWindow.loadFile(path.join(__dirname,'game','index.html'));
  mainWindow.once('ready-to-show',()=>{mainWindow.show();mainWindow.focus()});
  mainWindow.webContents.setWindowOpenHandler(({url})=>{if(/^https?:/.test(url))shell.openExternal(url);return{action:'deny'}});
  mainWindow.webContents.on('will-navigate',(event,url)=>{if(!url.startsWith('file:')){event.preventDefault();if(/^https?:/.test(url))shell.openExternal(url)}});
  mainWindow.on('closed',()=>{mainWindow=null});
}
Menu.setApplicationMenu(null);
app.whenReady().then(createWindow);
app.on('second-instance',()=>{if(mainWindow){if(mainWindow.isMinimized())mainWindow.restore();mainWindow.focus()}});
app.on('window-all-closed',()=>{if(process.platform!=='darwin')app.quit()});
app.on('activate',()=>{if(BrowserWindow.getAllWindows().length===0)createWindow()});
