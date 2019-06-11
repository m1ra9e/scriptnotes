rem очистка папки с временными и недавно посещенными файлами
rem установка атрибута для скрытия папки с недавно посещенными файлами

rd C:\DOCUME~1\USER1\LOCALS~1\Temp /s /q
md C:\DOCUME~1\USER1\LOCALS~1\Temp
rd C:\DOCUME~1\USER1\Recent /s /q
md C:\DOCUME~1\USER1\Recent
attrib +s C:\DOCUME~1\USER1\Recent