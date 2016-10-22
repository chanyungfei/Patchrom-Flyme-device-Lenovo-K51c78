.class public Lcom/flyme/deviceoriginalsettings/DateTimeSettings;
.super Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
.source "DateTimeSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;
.implements Landroid/app/DatePickerDialog$OnDateSetListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/lenovo/settings/search/Indexable;


# static fields
.field private static final AUTO_TIME_GPS_INDEX:I = 0x1

.field private static final AUTO_TIME_NETWORK_INDEX:I = 0x0

.field private static final AUTO_TIME_OFF_INDEX:I = 0x2

.field private static final DIALOG_DATEPICKER:I = 0x0

.field private static final DIALOG_GPS_CONFIRM:I = 0x2

.field private static final DIALOG_NETWORK_CONFIRM:I = 0x3

.field private static final DIALOG_TIMEPICKER:I = 0x1

.field protected static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final KEY_AUTO_TIME:Ljava/lang/String; = "auto_time_list"

.field private static final KEY_AUTO_TIME_CHECKBOX:Ljava/lang/String; = "auto_time_checkbox"

.field private static final KEY_AUTO_TIME_ZONE:Ljava/lang/String; = "auto_zone"

.field private static final KEY_DATE_FORMAT:Ljava/lang/String; = "date_format"

.field private static final KEY_INTERNAL_TIME_SET_CATEGORY:Ljava/lang/String; = "internal_roaming_time_settings_category"

.field private static final KEY_RECOMMAND_TIME_ZONE:Ljava/lang/String; = "roaming_time_settings_zone"

.field private static final KEY_TIME_DISPLAY:Ljava/lang/String; = "roaming_time_settings_time_display"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "DateTimeSettings"


# instance fields
.field private AUTO_TIME_GPS:Ljava/lang/String;

.field private mAutoTimeCheck:Landroid/preference/SwitchPreference;

.field private mAutoTimePref:Landroid/preference/ListPreference;

.field private mAutoTimeZonePref:Landroid/preference/SwitchPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInternalRoamingPreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mRecommandTimeZone:Landroid/preference/Preference;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimeDisplay:Landroid/preference/Preference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 992
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$6;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$6;-><init>()V

    sput-object v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/lenovo/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    .line 896
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$5;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$5;-><init>(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->reSetAutoTimePref()V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateDateFormatEntries()V

    return-void
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 4
    .param p0, "datePicker"    # Landroid/widget/DatePicker;

    .prologue
    .line 684
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 685
    .local v0, "t":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 686
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 687
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 688
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 689
    const/16 v1, 0x7f5

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 690
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 691
    return-void
.end method

.method private static formatOffset(Ljava/lang/StringBuilder;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "d"    # Ljava/util/Date;

    .prologue
    .line 872
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v2, v3, 0x3c

    .line 874
    .local v2, "off":I
    const-string v3, "GMT"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    if-gez v2, :cond_0

    .line 876
    const/16 v3, 0x2d

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 877
    neg-int v2, v2

    .line 882
    :goto_0
    div-int/lit8 v0, v2, 0x3c

    .line 883
    .local v0, "hours":I
    rem-int/lit8 v1, v2, 0x3c

    .line 885
    .local v1, "minutes":I
    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 886
    rem-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 888
    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 890
    div-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 891
    rem-int/lit8 v3, v1, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 893
    return-object p0

    .line 879
    .end local v0    # "hours":I
    .end local v1    # "minutes":I
    :cond_0
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 818
    if-eqz p1, :cond_0

    .line 819
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 824
    :cond_0
    :goto_0
    return v1

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 4
    .param p0, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 865
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 866
    .local v0, "now":Ljava/util/Date;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, p0, v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->formatOffset(Ljava/lang/StringBuilder;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initUI()V
    .locals 19

    .prologue
    .line 179
    const-string v1, "auto_time"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v9

    .line 180
    .local v9, "autoTimeEnabled":Z
    const-string v1, "auto_time_zone"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v11

    .line 182
    .local v11, "autoTimeZoneEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    .line 183
    .local v17, "intent":Landroid/content/Intent;
    const-string v1, "firstRun"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v18

    .line 186
    .local v18, "isFirstRun":Z
    const/4 v10, 0x0

    .line 187
    .local v10, "autoTimeGpsEnabled":Z
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    .line 195
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 199
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/16 v3, 0xb

    const/16 v4, 0x1f

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 206
    const-string v1, "auto_zone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    .line 215
    const-string v1, "auto_time_checkbox"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeCheck:Landroid/preference/SwitchPreference;

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeCheck:Landroid/preference/SwitchPreference;

    const v2, 0x7f0c0185

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 217
    const-string v1, "auto_time_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeCheck:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v11}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    const v2, 0x7f0c02a0

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummaryOn(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    const v2, 0x7f0c02a1

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummaryOff(I)V

    .line 239
    if-eqz v9, :cond_3

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 246
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 248
    const-string v1, "time"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 249
    const-string v1, "24 hour"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    .line 250
    const-string v1, "timezone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 251
    const-string v1, "date"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 252
    const-string v1, "date_format"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    .line 254
    if-eqz v18, :cond_1

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 260
    .local v13, "dateFormats":[Ljava/lang/String;
    array-length v1, v13

    new-array v15, v1, [Ljava/lang/String;

    .line 261
    .local v15, "formattedDates":[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getDateFormat()Ljava/lang/String;

    move-result-object v12

    .line 264
    .local v12, "currentFormat":Ljava/lang/String;
    if-nez v12, :cond_2

    .line 265
    const-string v12, ""

    .line 269
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/16 v3, 0xb

    const/16 v4, 0x1f

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 271
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    array-length v1, v15

    move/from16 v0, v16

    if-ge v0, v1, :cond_6

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    aget-object v2, v13, v16

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 276
    .local v14, "formatted":Ljava/lang/String;
    aget-object v1, v13, v16

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c04e7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v14, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v15, v16

    .line 271
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 241
    .end local v12    # "currentFormat":Ljava/lang/String;
    .end local v13    # "dateFormats":[Ljava/lang/String;
    .end local v14    # "formatted":Ljava/lang/String;
    .end local v15    # "formattedDates":[Ljava/lang/String;
    .end local v16    # "i":I
    :cond_3
    if-eqz v10, :cond_4

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    .line 244
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_0

    .line 280
    .restart local v12    # "currentFormat":Ljava/lang/String;
    .restart local v13    # "dateFormats":[Ljava/lang/String;
    .restart local v14    # "formatted":Ljava/lang/String;
    .restart local v15    # "formattedDates":[Ljava/lang/String;
    .restart local v16    # "i":I
    :cond_5
    aput-object v14, v15, v16

    goto :goto_2

    .line 284
    .end local v14    # "formatted":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v15}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    const v2, 0x7f0e0001

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v1, v12}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 288
    if-nez v9, :cond_7

    if-eqz v10, :cond_8

    :cond_7
    const/4 v8, 0x1

    .line 290
    .local v8, "autoEnabled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v8, :cond_9

    const/4 v1, 0x1

    :goto_4
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v8, :cond_a

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v11, :cond_b

    const/4 v1, 0x1

    :goto_6
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 296
    return-void

    .line 288
    .end local v8    # "autoEnabled":Z
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 290
    .restart local v8    # "autoEnabled":Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_4

    .line 291
    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    .line 295
    :cond_b
    const/4 v1, 0x0

    goto :goto_6
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDualClockShow()Z
    .locals 4

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/settings/manager/TelephonyPlugin;->isNetworkRoaming(Landroid/content/Context;I)Z

    move-result v0

    .line 984
    .local v0, "isRoamingSubscription1":Z
    const-string v1, "DateTimeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DataTimeSettings isDualClockShow is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    return v0
.end method

.method private reSetAutoTimePref()V
    .locals 4

    .prologue
    .line 937
    const-string v2, "DateTimeSettings"

    const-string v3, "reset AutoTimePref as cancel the selection"

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string v2, "auto_time"

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 939
    .local v0, "autoTimeEnabled":Z
    const/4 v1, 0x0

    .line 940
    .local v1, "autoTimeGpsEnabled":Z
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 941
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 942
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 946
    :cond_0
    if-eqz v0, :cond_1

    .line 947
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 953
    :goto_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 954
    return-void

    .line 948
    :cond_1
    if-eqz v1, :cond_2

    .line 949
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0

    .line 951
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_0
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 806
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 809
    return-void

    .line 806
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 828
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 830
    .local v0, "c":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 831
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 832
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 833
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 835
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 836
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 838
    :cond_0
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v4, 0x0

    .line 841
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 843
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 844
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 845
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 846
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 847
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 849
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 850
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 852
    :cond_0
    return-void
.end method

.method private timeUpdated()V
    .locals 2

    .prologue
    .line 795
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 796
    .local v0, "timeChanged":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 797
    return-void
.end method

.method private updateDateFormatEntries()V
    .locals 8

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "dateFormats":[Ljava/lang/String;
    array-length v4, v0

    new-array v2, v4, [Ljava/lang/String;

    .line 458
    .local v2, "formattedDates":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    aget-object v5, v0, v3

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, "formatted":Ljava/lang/String;
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 463
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c04e7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 458
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    :cond_0
    aput-object v1, v2, v3

    goto :goto_1

    .line 469
    .end local v1    # "formatted":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v4, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 470
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 791
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 792
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 958
    const-string v0, "DateTimeSettings"

    const-string v1, "onCancel Dialog"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->reSetAutoTimePref()V

    .line 960
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 913
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    .line 914
    const-string v1, "DateTimeSettings"

    const-string v2, "Enable GPS time sync"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 917
    .local v0, "gpsEnabled":Z
    if-nez v0, :cond_0

    .line 918
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 922
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 924
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 925
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 926
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 934
    .end local v0    # "gpsEnabled":Z
    :cond_1
    :goto_0
    return-void

    .line 930
    :cond_2
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    .line 931
    const-string v1, "DateTimeSettings"

    const-string v2, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->reSetAutoTimePref()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 969
    const-string v0, "DateTimeSettings"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 976
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/manager/MtkPlug;->clearScrapViewsIfNeeded(Landroid/widget/ListView;)V

    .line 977
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->addPreferencesFromResource(I)V

    .line 153
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/LenovoUtils;->setContext(Landroid/content/Context;)V

    .line 154
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/SettingsProvider;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/SettingsProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/SettingsProvider;->getConstantUriStringAUTO_TIME_GPS()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/QCOMPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/QCOMPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/QCOMPlug;->getUIM_TYPE_CTCC()I

    .line 160
    const-string v0, "internal_roaming_time_settings_category"

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mInternalRoamingPreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 167
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/settings/manager/MtkPlug;->customizePreferenceScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->initUI()V

    .line 176
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const v4, 0x7f0c04f9

    .line 600
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 601
    .local v8, "calendar":Ljava/util/Calendar;
    packed-switch p1, :pswitch_data_0

    .line 678
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 603
    :pswitch_0
    new-instance v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$1;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v3, 0x5

    invoke-virtual {v8, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$1;-><init>(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 613
    .local v0, "d":Landroid/app/DatePickerDialog;
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->configureDatePicker(Landroid/widget/DatePicker;)V

    .line 647
    .end local v0    # "d":Landroid/app/DatePickerDialog;
    :goto_0
    return-object v0

    .line 616
    :pswitch_1
    new-instance v1, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$2;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v2, 0xb

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v2, 0xc

    invoke-virtual {v8, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, p0

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$2;-><init>(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .local v1, "timeD":Landroid/app/TimePickerDialog;
    move-object v0, v1

    .line 627
    goto :goto_0

    .line 631
    .end local v1    # "timeD":Landroid/app/TimePickerDialog;
    :pswitch_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    const v9, 0x7f0c0182

    .line 637
    .local v9, "msg":I
    :goto_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040013

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 635
    .end local v9    # "msg":I
    :cond_0
    const v9, 0x7f0c0183

    .restart local v9    # "msg":I
    goto :goto_1

    .line 647
    .end local v9    # "msg":I
    :pswitch_3
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0239

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c023a

    new-instance v4, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$4;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$4;-><init>(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c023b

    new-instance v4, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$3;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings$3;-><init>(Lcom/flyme/deviceoriginalsettings/DateTimeSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 601
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 475
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 476
    invoke-static {v0, p2, p3, p4}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 477
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 479
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateDateFormatEntries()V

    .line 482
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPause()V

    .line 431
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 432
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 434
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkPlug;->releaseIDateTimeSettingsExt()V

    .line 438
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const v3, 0x7f0c054d

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 721
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    .line 722
    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->showDialog(I)V

    .line 724
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0556

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 729
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->removeDialog(I)V

    .line 730
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->showDialog(I)V

    .line 732
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0554

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    .line 736
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->set24Hour(Z)V

    .line 737
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 738
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->timeUpdated()V

    .line 740
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0553

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeCheck:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_8

    .line 747
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeCheck:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v8

    .line 748
    .local v8, "autoEnabled":Z
    if-eqz v8, :cond_5

    .line 749
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "auto_time"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 750
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 751
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 752
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 765
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v8, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 766
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v8, :cond_7

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 767
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 769
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0307

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 757
    :cond_5
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "auto_time"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 758
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 759
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 760
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v0, v2

    .line 765
    goto :goto_2

    :cond_7
    move v1, v2

    .line 766
    goto :goto_3

    .line 772
    .end local v8    # "autoEnabled":Z
    :cond_8
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mRecommandTimeZone:Landroid/preference/Preference;

    if-ne p2, v0, :cond_9

    .line 773
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.SettingsRecommendTimeZone"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 779
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimeDisplay:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 780
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.TimeDisplayDiaolog"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 300
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->onResume()V

    .line 302
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 310
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCT()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 312
    const-string v3, "DateTimeSettings"

    const-string v4, "onResume, -----------------chinatelecom----------------"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mInternalRoamingPreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->isDualClockShow()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 381
    :goto_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v3, Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->is24Hour()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 384
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 387
    const-string v3, "auto_time"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 389
    .local v0, "autoTimeEnabled":Z
    const-string v3, "auto_time_zone"

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 390
    .local v1, "autoTimeZoneEnabled":Z
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCmcc()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 391
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 404
    .end local v0    # "autoTimeEnabled":Z
    .end local v1    # "autoTimeZoneEnabled":Z
    :cond_0
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 405
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 413
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateDateFormatEntries()V

    .line 419
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/settings/manager/MtkPlug;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkPlug;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeZonePref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lenovo/settings/manager/MtkPlug;->customizeDateTimePreferenceStatus(Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/SwitchPreference;)V

    .line 426
    :cond_1
    return-void

    .line 374
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mInternalRoamingPreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 393
    .restart local v0    # "autoTimeEnabled":Z
    .restart local v1    # "autoTimeZoneEnabled":Z
    :cond_3
    const-string v3, "auto_time_checkbox"

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeCheck:Landroid/preference/SwitchPreference;

    .line 394
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeCheck:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 16
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 499
    const-string v2, "date_format"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c04e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 502
    .local v13, "format":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "date_format"

    invoke-static {v2, v3, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->timeUpdated()V

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0557

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c054d

    const-class v6, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    .end local v13    # "format":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    const-string v2, "auto_time_list"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v15

    .line 516
    .local v15, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v15}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v14

    .line 517
    .local v14, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimePref:Landroid/preference/ListPreference;

    invoke-virtual {v2, v15}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 519
    const/4 v10, 0x1

    .line 521
    .local v10, "autoEnabled":Z
    if-nez v14, :cond_5

    .line 523
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isCmcc()Z

    move-result v3

    const-string v2, "auto_time"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    .line 524
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->showDialog(I)V

    .line 525
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 559
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v10, :cond_8

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v10, :cond_9

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 523
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 527
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 531
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 541
    :cond_5
    const/4 v2, 0x1

    if-ne v14, v2, :cond_6

    .line 542
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->showDialog(I)V

    .line 543
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_2

    .line 544
    :cond_6
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 545
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 547
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 553
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 559
    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    .line 560
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 561
    .end local v10    # "autoEnabled":Z
    .end local v14    # "index":I
    .end local v15    # "value":Ljava/lang/String;
    :cond_a
    const-string v2, "auto_zone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 562
    const/4 v2, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 563
    .local v12, "autoZoneEnabled":Z
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time_zone"

    if-eqz v12, :cond_b

    const/4 v2, 0x1

    :goto_5
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    if-nez v12, :cond_c

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0552

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0c054d

    const-class v6, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-class v9, Lcom/flyme/deviceoriginalsettings/SubSettings;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangValueAction(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 563
    :cond_b
    const/4 v2, 0x0

    goto :goto_5

    .line 565
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 571
    .end local v12    # "autoZoneEnabled":Z
    :cond_d
    const-string v2, "auto_time_checkbox"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mAutoTimeCheck:Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v11

    .line 573
    .local v11, "autoTimeEnabled":Z
    if-eqz v11, :cond_f

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 576
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 591
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-nez v11, :cond_10

    const/4 v2, 0x1

    :goto_8
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 592
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-nez v11, :cond_11

    const/4 v2, 0x1

    :goto_9
    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 583
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 586
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->AUTO_TIME_GPS:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    .line 591
    :cond_10
    const/4 v2, 0x0

    goto :goto_8

    .line 592
    :cond_11
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 487
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 488
    invoke-static {v0, p2, p3}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 489
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 495
    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 441
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    .line 442
    .local v9, "shortDateFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 443
    .local v8, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 446
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 447
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    .line 448
    .local v7, "dummyDate":Ljava/util/Date;
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v9, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 453
    return-void
.end method
