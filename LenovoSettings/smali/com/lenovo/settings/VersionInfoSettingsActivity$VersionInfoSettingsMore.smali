.class public Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;
.super Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;
.source "VersionInfoSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/VersionInfoSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfoSettingsMore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;,
        Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$EMMC;
    }
.end annotation


# static fields
.field public static final CPU_INFO_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/"

.field private static final FILENAME_MSV:Ljava/lang/String; = "/sys/board_properties/soc/msv"

.field private static final FILENAME_PROC_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final KEY_BASEBAND_VERSION:Ljava/lang/String; = "baseband_version"

.field private static final KEY_BASEBAND_VERSION_2:Ljava/lang/String; = "baseband_version_2"

.field private static final KEY_BUILD_NUMBER:Ljava/lang/String; = "build_number"

.field private static final KEY_DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final KEY_EQUIPMENT_ID:Ljava/lang/String; = "fcc_equipment_id"

.field private static final KEY_FIRMWARE_VERSION:Ljava/lang/String; = "firmware_version"

.field private static final KEY_HARDWARE_VERSION:Ljava/lang/String; = "hardware_version"

.field private static final KEY_KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field private static final KEY_MEMORY_INFO:Ljava/lang/String; = "memory_info"

.field private static final KEY_PHONE_STORAGE_INFO:Ljava/lang/String; = "phone_storage_info"

.field private static final KEY_PROCESSOR_INFO:Ljava/lang/String; = "processor_info"

.field private static final LOG_TAG:Ljava/lang/String; = "DeviceInfoSettingsMore"

.field public static final MAX_FREQ_PATH:[Ljava/lang/String;

.field public static final PROC_MEM_INFO:Ljava/lang/String; = "/proc/meminfo"

.field public static final PROC_PARTITION_INFO:Ljava/lang/String; = "/proc/partitions"

.field private static final PROPERTY_BUILD_VERSION_CUSTOM:Ljava/lang/String; = "ro.custom.build.version"

.field private static final PROPERTY_EQUIPMENT_ID:Ljava/lang/String; = "ro.ril.fccid"

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7


# instance fields
.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field mHits:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 113
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/sys/devices/system/cpu/cpu1/cpufreq/cpuinfo_max_freq"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sys/devices/system/cpu/cpu2/cpufreq/cpuinfo_max_freq"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/sys/devices/system/cpu/cpu3/cpufreq/cpuinfo_max_freq"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/sys/devices/system/cpu/cpu4/cpufreq/cpuinfo_max_freq"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/sys/devices/system/cpu/cpu5/cpufreq/cpuinfo_max_freq"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/sys/devices/system/cpu/cpu6/cpufreq/cpuinfo_max_freq"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/sys/devices/system/cpu/cpu7/cpufreq/cpuinfo_max_freq"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->MAX_FREQ_PATH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mHits:[J

    .line 135
    return-void
.end method

.method private formatSize(J)Ljava/lang/String;
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCPUFreq(I)F
    .locals 6
    .param p1, "coreIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 296
    :try_start_0
    const-string v2, ""

    .line 297
    .local v2, "result":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->MAX_FREQ_PATH:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 307
    .end local v2    # "result":Ljava/lang/String;
    :goto_0
    return v3

    .line 300
    .restart local v2    # "result":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->MAX_FREQ_PATH:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {p0, v4}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    const-string v4, "DeviceInfoSettingsMore"

    invoke-static {v4, v2}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "#.0"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    int-to-float v3, v3

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    goto :goto_0

    .line 304
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "getMaxReq"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getCPUInfoFromFile()Ljava/lang/String;
    .locals 5

    .prologue
    .line 730
    const-string v2, ""

    .line 732
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/etc/version.conf"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x400

    invoke-direct {v1, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 733
    .local v1, "reader":Ljava/io/BufferedReader;
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    .local v0, "a":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 736
    const-string v3, "cpu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 737
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 742
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 746
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v2

    .line 742
    .restart local v0    # "a":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 744
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getExternalModemSlot()I
    .locals 5

    .prologue
    const v4, 0x7f0c045a

    .line 660
    const-string v2, "ril.external.md"

    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "md":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_1()I

    move-result v1

    .line 667
    .local v1, "modemSlot":I
    :goto_0
    return v1

    .line 665
    .end local v1    # "modemSlot":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .restart local v1    # "modemSlot":I
    goto :goto_0
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .locals 8

    .prologue
    .line 600
    :try_start_0
    const-string v5, "/proc/version"

    invoke-direct {p0, v5}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, "procVersionStr":Ljava/lang/String;
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 611
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v5, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 612
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 614
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_0

    .line 615
    const-string v5, "DeviceInfoSettingsMore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Regex did not match on /proc/version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v5, "Unavailable"

    .line 630
    .end local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "procVersionStr":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 617
    .restart local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "procVersionStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 618
    const-string v5, "DeviceInfoSettingsMore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Regex match on /proc/version only returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " groups"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const-string v5, "Unavailable"

    goto :goto_0

    .line 624
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 627
    .end local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "procVersionStr":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 628
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "DeviceInfoSettingsMore"

    const-string v6, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v5, v6, v1}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 630
    const-string v5, "Unavailable"

    goto :goto_0
.end method

.method private getMsvSuffix()Ljava/lang/String;
    .locals 6

    .prologue
    .line 644
    :try_start_0
    const-string v1, "/sys/board_properties/soc/msv"

    invoke-direct {p0, v1}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "msv":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 648
    const-string v1, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    .end local v0    # "msv":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 652
    :catch_0
    move-exception v1

    .line 655
    :cond_0
    :goto_1
    const-string v1, ""

    goto :goto_0

    .line 650
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private getProcessorInformation()Ljava/lang/String;
    .locals 12

    .prologue
    .line 255
    const/4 v0, -0x1

    .line 268
    .local v0, "coreNum":I
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v9, "/sys/devices/system/cpu/"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v3, "dir":Ljava/io/File;
    new-instance v9, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$1CpuFilter;

    invoke-direct {v9, p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$1CpuFilter;-><init>(Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;)V

    invoke-virtual {v3, v9}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 270
    .local v5, "files":[Ljava/io/File;
    const-string v9, "DeviceInfoSettingsMore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CPU Count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    array-length v0, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    .end local v3    # "dir":Ljava/io/File;
    .end local v5    # "files":[Ljava/io/File;
    :goto_0
    const/4 v8, 0x0

    .line 278
    .local v8, "maxFreq":F
    const/4 v1, 0x0

    .line 279
    .local v1, "curFreq":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v0, :cond_1

    .line 280
    invoke-direct {p0, v7}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getCPUFreq(I)F

    move-result v1

    .line 281
    cmpl-float v9, v1, v8

    if-lez v9, :cond_0

    move v8, v1

    .line 279
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 272
    .end local v1    # "curFreq":F
    .end local v7    # "i":I
    .end local v8    # "maxFreq":F
    :catch_0
    move-exception v4

    .line 273
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "DeviceInfoSettingsMore"

    const-string v10, "CPU Count: Failed."

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 285
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "curFreq":F
    .restart local v7    # "i":I
    .restart local v8    # "maxFreq":F
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getCPUInfoFromFile()Ljava/lang/String;

    move-result-object v6

    .line 286
    .local v6, "freqStr":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 287
    :cond_2
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v9, "#.0"

    invoke-direct {v2, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 288
    .local v2, "df":Ljava/text/DecimalFormat;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v10, v8

    invoke-virtual {v2, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "GHz"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 291
    .end local v2    # "df":Ljava/text/DecimalFormat;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0085

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9
.end method

.method private getRamSize()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v10, -0x1

    const v12, 0x7f0c045a

    .line 424
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string v9, "/proc/meminfo"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x400

    invoke-direct {v7, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 426
    .local v7, "reader":Ljava/io/BufferedReader;
    const-string v2, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .local v2, "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 430
    const-string v8, "MemTotal"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_0

    .line 431
    const/16 v8, 0x20

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 432
    .local v1, "index":I
    :goto_0
    const-string v8, "1234567890"

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    :cond_1
    add-int/lit8 v8, v1, 0x1

    const-string v9, "kB"

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 436
    .local v4, "memoryTotal":Ljava/lang/String;
    const-string v8, "DeviceInfoSettingsMore"

    invoke-static {v8, v4}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x400

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->getTotalRAMbySize(J)Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;

    move-result-object v5

    .line 438
    .local v5, "ramSize":Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    const/4 v3, 0x0

    .line 439
    .local v3, "meminfo":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;->name()Ljava/lang/String;

    move-result-object v6

    .line 440
    .local v6, "ramSizeName":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 441
    const-string v8, "SIZE_0G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 442
    const-string v3, "OGB"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 469
    .end local v1    # "index":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "meminfo":Ljava/lang/String;
    .end local v4    # "memoryTotal":Ljava/lang/String;
    .end local v5    # "ramSize":Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    .end local v6    # "ramSizeName":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_2
    return-object v3

    .line 443
    .restart local v1    # "index":I
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "meminfo":Ljava/lang/String;
    .restart local v4    # "memoryTotal":Ljava/lang/String;
    .restart local v5    # "ramSize":Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    .restart local v6    # "ramSizeName":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_3
    const-string v8, "SIZE_0_5G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 444
    const-string v3, "0.5GB"

    goto :goto_1

    .line 445
    :cond_4
    const-string v8, "SIZE_1G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 446
    const-string v3, "1GB"

    goto :goto_1

    .line 447
    :cond_5
    const-string v8, "SIZE_1_5G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 448
    const-string v3, "1.5GB"

    goto :goto_1

    .line 449
    :cond_6
    const-string v8, "SIZE_2G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 450
    const-string v3, "2GB"

    goto :goto_1

    .line 451
    :cond_7
    const-string v8, "SIZE_3G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 452
    const-string v3, "3GB"

    goto :goto_1

    .line 453
    :cond_8
    const-string v8, "SIZE_4G"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 454
    const-string v3, "4GB"

    goto :goto_1

    .line 456
    :cond_9
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c045a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    goto :goto_1

    .line 463
    .end local v1    # "index":I
    .end local v3    # "meminfo":Ljava/lang/String;
    .end local v4    # "memoryTotal":Ljava/lang/String;
    .end local v5    # "ramSize":Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$RAMSize;
    .end local v6    # "ramSizeName":Ljava/lang/String;
    :cond_a
    :try_start_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 469
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 463
    :catchall_0
    move-exception v8

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 465
    .end local v2    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "DeviceInfoSettingsMore"

    const-string v9, "IO Exception when getting memory information for phone information."

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private getRomSize()Ljava/lang/String;
    .locals 14

    .prologue
    const v13, 0x7f0c045a

    .line 370
    const-wide/16 v8, 0x0

    .line 372
    .local v8, "size":J
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/proc/partitions"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v11, 0x400

    invoke-direct {v5, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 373
    .local v5, "reader":Ljava/io/BufferedReader;
    const-string v3, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    .local v3, "line":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 377
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\s+"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 378
    .local v7, "split":[Ljava/lang/String;
    array-length v10, v7

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 379
    const/4 v10, 0x0

    aget-object v10, v7, v10

    const-string v11, "179"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    aget-object v10, v7, v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    .line 381
    const/4 v10, 0x2

    :try_start_2
    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v8

    .line 391
    .end local v7    # "split":[Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 398
    invoke-static {v8, v9}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$EMMC;->getEmmcBySize(J)Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$EMMC;

    move-result-object v2

    .line 399
    .local v2, "emmc":Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$EMMC;
    const-string v10, "DeviceInfoSettingsMore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "detect emmc size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$EMMC;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const/4 v4, 0x0

    .line 401
    .local v4, "phoneStorageinfo":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$EMMC;->name()Ljava/lang/String;

    move-result-object v6

    .line 402
    .local v6, "romSizeName":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 403
    const-string v10, "SIZE_0G"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 404
    const-string v4, "OGB"

    .line 419
    .end local v2    # "emmc":Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$EMMC;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "phoneStorageinfo":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "romSizeName":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v4

    .line 383
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 384
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v10, "DeviceInfoSettingsMore"

    const-string v11, "get emmc total size fail, parse number fail"

    invoke-static {v10, v11, v0}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 385
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c045a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 391
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 393
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "split":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 395
    .local v1, "e1":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 396
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 391
    .end local v1    # "e1":Ljava/io/IOException;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v10

    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v10
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 405
    .restart local v2    # "emmc":Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore$EMMC;
    .restart local v4    # "phoneStorageinfo":Ljava/lang/String;
    .restart local v6    # "romSizeName":Ljava/lang/String;
    :cond_3
    const-string v10, "SIZE_4G"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 406
    const-string v4, "4GB"

    goto :goto_0

    .line 407
    :cond_4
    const-string v10, "SIZE_8G"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 408
    const-string v4, "8GB"

    goto :goto_0

    .line 409
    :cond_5
    const-string v10, "SIZE_16G"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 410
    const-string v4, "16GB"

    goto :goto_0

    .line 411
    :cond_6
    const-string v10, "SIZE_32G"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 412
    const-string v4, "32GB"

    goto :goto_0

    .line 413
    :cond_7
    const-string v10, "SIZE_64G"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 414
    const-string v4, "64GB"

    goto :goto_0

    .line 416
    :cond_8
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getSoftwareVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 696
    const-string v4, "DeviceInfoSettingsMore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSoftwareVersion key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v3, ""

    .line 699
    .local v3, "ret":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/etc/version.conf"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 700
    .local v2, "reader":Ljava/io/BufferedReader;
    const-string v0, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 702
    .local v0, "a":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 703
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 704
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 709
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 714
    .end local v0    # "a":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 715
    :cond_2
    const-string v4, "DeviceInfoSettingsMore"

    const-string v5, "version.conf can not read."

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v4, "product_model"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 717
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 724
    :cond_3
    :goto_1
    const-string v4, "DeviceInfoSettingsMore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    return-object v3

    .line 709
    .restart local v0    # "a":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 711
    .end local v0    # "a":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 712
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "IO Exception when getting kernel version for Device Info screen"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 718
    .end local v1    # "e":Ljava/io/IOException;
    :cond_4
    const-string v4, "framework"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 719
    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_1

    .line 720
    :cond_5
    const-string v4, "hardware"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 721
    const-string v4, "ro.product.hw.version"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 591
    .local v0, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 593
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method private removePreferenceIfExist(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 552
    :cond_0
    return-void
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;
    .param p2, "preference"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 555
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettingsMore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 567
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c045a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;

    .prologue
    .line 575
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c045a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateBasebandTitle()V
    .locals 8

    .prologue
    const v7, 0x7f0c071d

    .line 671
    const v4, 0x7f0c0712

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, "basebandversion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportEVDO_DT_SUPPORT()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 676
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 677
    .local v3, "tr":Ljava/util/Locale;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GSM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "slot1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "slot2":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 681
    :cond_0
    const-string v4, "GSM "

    const-string v5, "GSM"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 682
    const-string v4, "CDMA "

    const-string v5, "CDMA"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 690
    .end local v3    # "tr":Ljava/util/Locale;
    :cond_1
    :goto_0
    const-string v4, "baseband_version"

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 691
    const-string v4, "baseband_version_2"

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 692
    return-void

    .line 685
    .end local v1    # "slot1":Ljava/lang/String;
    .end local v2    # "slot2":Ljava/lang/String;
    :cond_2
    const v4, 0x7f0c0199

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 686
    .restart local v1    # "slot1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 687
    const v4, 0x7f0c019a

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 688
    .restart local v2    # "slot2":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 139
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const v8, 0x7f06001f

    invoke-virtual {p0, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->addPreferencesFromResource(I)V

    .line 143
    const-string v8, "firmware_version"

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v8, "firmware_version"

    invoke-virtual {p0, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 148
    const-string v0, "gsm.version.baseband"

    .line 150
    .local v0, "baseversion":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getExternalModemSlot()I

    move-result v4

    .line 151
    .local v4, "modemSlot":I
    if-eqz v4, :cond_4

    move v3, v7

    .line 153
    .local v3, "hasExternalModem":Z
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportPURE_AP_USE_EXTERNAL_MODEM()Z

    move-result v8

    if-nez v8, :cond_0

    .line 154
    if-ne v4, v7, :cond_0

    .line 155
    const-string v0, "gsm.version.baseband.2"

    .line 158
    :cond_0
    const-string v8, "DeviceInfoSettingsMore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "baseversion="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v8, "baseband_version"

    invoke-direct {p0, v8, v0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportPURE_AP_USE_EXTERNAL_MODEM()Z

    move-result v8

    if-nez v8, :cond_6

    .line 163
    const-string v6, "gsm.version.baseband.2"

    .line 165
    .local v6, "version2":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportEVDO_DT_SUPPORT()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 166
    const-string v6, "cdma.version.baseband"

    .line 172
    :cond_1
    :goto_1
    const-string v8, "DeviceInfoSettingsMore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "version2="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v8, "baseband_version_2"

    invoke-direct {p0, v8, v6}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->updateBasebandTitle()V

    .line 179
    .end local v6    # "version2":Ljava/lang/String;
    :goto_2
    const-string v8, "fcc_equipment_id"

    const-string v9, "ro.ril.fccid"

    invoke-direct {p0, v8, v9}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 184
    .local v1, "buildDeviceName":Ljava/lang/String;
    const-string v8, "sisleyt"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 185
    const-string v8, "device_model"

    const-string v9, "Lenovo S90-t"

    invoke-direct {p0, v8, v9}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_3
    const-string v8, "build_number"

    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v8, "build_number"

    invoke-virtual {p0, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    const-string v7, "custom_build_version"

    const-string v8, "ro.custom.build.version"

    invoke-direct {p0, v7, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "fcc_equipment_id"

    const-string v9, "ro.ril.fccid"

    invoke-direct {p0, v7, v8, v9}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/flyme/deviceoriginalsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "baseband_version"

    invoke-virtual {p0, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    :cond_2
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCmcc()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 210
    const-string v7, "device_model"

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c024e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "baseband_version"

    invoke-virtual {p0, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 212
    const-string v7, "kernel_version"

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-direct {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    const-string v7, "hardware_version"

    const-string v8, "hardware"

    invoke-direct {p0, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getSoftwareVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_4
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 225
    .local v2, "deviceName":Ljava/lang/String;
    const-string v7, "processor_info"

    invoke-direct {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getProcessorInformation()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v7, "memory_info"

    invoke-direct {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getRamSize()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v7, "phone_storage_info"

    invoke-direct {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getRomSize()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v7, "row"

    const-string v8, "ro.lenovo.region"

    const-string v9, "prc"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 239
    .local v5, "row":Z
    if-nez v5, :cond_3

    .line 241
    const-string v7, "baseband_version"

    invoke-direct {p0, v7}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 242
    const-string v7, "baseband_version_2"

    invoke-direct {p0, v7}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 243
    const-string v7, "fcc_equipment_id"

    invoke-direct {p0, v7}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->removePreferenceIfExist(Ljava/lang/String;)V

    .line 247
    :cond_3
    return-void

    .line 151
    .end local v1    # "buildDeviceName":Ljava/lang/String;
    .end local v2    # "deviceName":Ljava/lang/String;
    .end local v3    # "hasExternalModem":Z
    .end local v5    # "row":Z
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 168
    .restart local v3    # "hasExternalModem":Z
    .restart local v6    # "version2":Ljava/lang/String;
    :cond_5
    if-ne v4, v7, :cond_1

    .line 169
    const-string v6, "gsm.version.baseband"

    goto/16 :goto_1

    .line 176
    .end local v6    # "version2":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "baseband_version_2"

    invoke-virtual {p0, v9}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 186
    .restart local v1    # "buildDeviceName":Ljava/lang/String;
    :cond_7
    const-string v8, "sisleyw"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 187
    const-string v8, "device_model"

    const-string v9, "Lenovo S90-u"

    invoke-direct {p0, v8, v9}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 189
    :cond_8
    const-string v8, "device_model"

    const-string v9, "product_model"

    invoke-direct {p0, v9}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getSoftwareVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 215
    :cond_9
    const-string v7, "device_model"

    invoke-virtual {p0, v7}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0710

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "kernel_version"

    invoke-virtual {p0, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "hardware_version"

    invoke-virtual {p0, v8}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 484
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onDestroy()V

    .line 485
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 489
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "firmware_version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :cond_1
    return v0

    .line 501
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "build_number"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_1

    .line 506
    iget v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitCountdown:I

    if-lez v1, :cond_7

    .line 507
    iget v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitCountdown:I

    if-ne v1, v0, :cond_3

    .line 508
    invoke-super {p0, p2}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->ensurePinRestrictedPreference(Landroid/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 512
    :cond_3
    iget v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitCountdown:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitCountdown:I

    .line 513
    iget v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitCountdown:I

    if-nez v1, :cond_5

    .line 514
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    invoke-virtual {v1, v2, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "show"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 516
    iget-object v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_4

    .line 517
    iget-object v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 519
    :cond_4
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c045b

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    .line 520
    iget-object v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 523
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v1

    const-class v2, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v0}, Lcom/lenovo/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    .line 527
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/DashboardSortUtil;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/DashboardSortUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/DashboardSortUtil;->showDevelopmentSettings()V

    goto/16 :goto_0

    .line 529
    :cond_5
    iget v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitCountdown:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitCountdown:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 530
    iget-object v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_6

    .line 531
    iget-object v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 533
    :cond_6
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0f0000

    iget v4, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitCountdown:I

    new-array v0, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitCountdown:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    .line 535
    iget-object v0, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 537
    :cond_7
    iget v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitCountdown:I

    if-gez v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v1, :cond_8

    .line 539
    iget-object v1, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 541
    :cond_8
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c045c

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    .line 542
    iget-object v0, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 475
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/RestrictedSettingsFragment;->onResume()V

    .line 476
    invoke-virtual {p0}, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitCountdown:I

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/VersionInfoSettingsActivity$VersionInfoSettingsMore;->mDevHitToast:Landroid/widget/Toast;

    .line 480
    return-void

    .line 476
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
