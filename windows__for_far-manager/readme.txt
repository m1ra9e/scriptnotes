Расположение макросов:
"C:\Users\(user_name)\AppData\Roaming\Far Manager\Profile\Macros\internal"


Макросы для работы: 
 копирования - (Ctrl+C) - Shell_CtrlC.lua
 вставки     - (Ctrl+V) - Shell_CtrlV.lua
 вырезания   - (Ctrl+X) - Shell_CtrlX.lua


Макросы (+ скрипты) для работы: 
 фонового копирования - (Ctrl+Shift+F5) - Shell_CtrlShiftF5.lua
 фонового перемещения - (Ctrl+Shift+F6) - Shell_CtrlShiftF6.lua
 фонового удаления    - (Ctrl+Shift+F8) - Shell_CtrlShiftF8.lua
   (в "_tool_background" находятся скрипты для операция 
    копирования, перемещения, удаления в фоне)
   (нужно "_tool_background" скопировать в папку с Far - "%FARHOME%")
   (для корректной работы с названиями файлов и папок на русском языке 
    файлы в "_tool_background" должны быть в кодировке cp866)


Макрос для вызова контекстного меню файла - (ShiftF10) - Shell_ShiftF10.lua


Макросы для работы с плагином "PanelTabs" (https://plugring.farmanager.com/plugin.php?l=ru&pid=873): 
 открть вкладку                     - (Ctrl+Shift+T)   - Shell_CtrlShiftT.lua
 переключиться на следующую вкладку - (Ctrl+Shift+Tab) - Shell_CtrlShiftTab.lua
 закрыть текущую вкладку            - (Ctrl+Shift+W)   - Shell_CtrlShiftW.lua


-----------------------------------------


FarMenu.ini - пример пользовательского меню.
Пользовательское меню хранится тут:
"C:\Users\(user_name)\AppData\Roaming\Far Manager\Profile"


-----------------------------------------


"_tool_set_my_configs/setmyconfigs.bat" - скрипт
   для копирвания из "%FARHOME%\Profile" забекапленых-файлов профиля
   в "%$APPDATA%\Far Manager (my configs)\Profile"
   ("C:\Users\(user_name)\AppData\Roaming\Far Manager\Profile")


-----------------------------------------


mirage_black-yellow_far_theme.farconfig - файл с настройками внешнего вида far-manager'а, 
этот файл нужно положить в папку с Far - %FARHOME%.

Для того, чтобы сохранить настройки Far Manager, можно экспортировать их в конфигурационный файл. Делается это командой
Far.exe /export mirage_black-yellow_far_theme.farconfig

Загрузка настроек из конфигурационного файла
Для того, чтобы позже импортировать эти настройки, нужно выйти из Far, после чего выполнить команду
Far.exe /import mirage_black-yellow_far_theme.farconfig


