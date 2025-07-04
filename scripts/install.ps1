# sudo pwsh.exe

#rm -Recurse -Force  'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Core\Languages\Italiano'
#rm -Recurse -Force  'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Royalty\Languages\Italiano'
#rm -Recurse -Force  'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Ideology\Languages\Italiano'
#rm -Recurse -Force  'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Biotech\Languages\Italiano'
#rm -Recurse -Force  'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Anomaly\Languages\Italiano'

$basePath = 'C:\Users\montr\progetti\RimWorld-it'

# copia i file originali dall'inglese inglese
robocopy 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Core\Languages\English' "$basePath\English\Core"  /MIR /NFL /NDL /E /XO /XN /NJH /NJS /NC /NS /NP
robocopy 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Royalty' "$basePath\English\Royalty"  /MIR /NFL /NDL /E /XO /XN /NJH /NJS /NC /NS /NP
robocopy 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Ideology\Languages\English' "$basePath\English\Ideology"  /MIR /NFL /NDL /E /XO /XN /NJH /NJS /NC /NS /NP
robocopy 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Biotech\Languages\English' "$basePath\English\Biotech"  /MIR /NFL /NDL /E /XO /XN /NJH /NJS /NC /NS /NP
robocopy 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Anomaly\Languages\English' "$basePath\English\Anomaly"  /MIR /NFL /NDL /E /XO /XN /NJH /NJS /NC /NS /NP

# installa la patch
robocopy "$basePath\Core" 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Core\Languages\Italiano' /NFL /NDL /MIR /NJH /NJS /NC /NS /NP
robocopy "$basePath\Royalty" 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Royalty\Languages\Italiano' /NFL /NDL /MIR /NJH /NJS /NC /NS /NP
robocopy "$basePath\Ideology" 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Ideology\Languages\Italiano' /NFL /NDL /MIR /NJH /NJS /NC /NS /NP
robocopy "$basePath\Biotech" 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Biotech\Languages\Italiano' /NFL /NDL /MIR /NJH /NJS /NC /NS /NP
robocopy "$basePath\Anomaly" 'C:\Program Files (x86)\Steam\steamapps\common\RimWorld\Data\Anomaly\Languages\Italiano' /NFL /NDL /MIR /NJH /NJS /NC /NS /NP

echo "RimWorld Italian translation installed successfully."