.class public Lcom/flyme/deviceoriginalsettings/SettingsActivity;
.super Llenovo/app/ActionBarActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnPreferenceTreeClickListener;
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Lcom/flyme/deviceoriginalsettings/ButtonBarHandler;
.implements Landroid/app/FragmentManager$OnBackStackChangedListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/widget/SearchView$OnCloseListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;


# static fields
.field public static final BACK_STACK_PREFS:Ljava/lang/String; = ":settings:prefs"

.field private static final EMPTY_QUERY:Ljava/lang/String; = ""

.field private static final ENTRY_FRAGMENTS:[Ljava/lang/String;

.field public static final EXTRA_FRAGMENT_ARG_KEY:Ljava/lang/String; = ":settings:fragment_args_key"

.field protected static final EXTRA_PREFS_SET_BACK_TEXT:Ljava/lang/String; = "extra_prefs_set_back_text"

.field protected static final EXTRA_PREFS_SET_NEXT_TEXT:Ljava/lang/String; = "extra_prefs_set_next_text"

.field protected static final EXTRA_PREFS_SHOW_BUTTON_BAR:Ljava/lang/String; = "extra_prefs_show_button_bar"

.field private static final EXTRA_PREFS_SHOW_SKIP:Ljava/lang/String; = "extra_prefs_show_skip"

.field public static final EXTRA_SHOW_FRAGMENT:Ljava/lang/String; = ":settings:show_fragment"

.field public static final EXTRA_SHOW_FRAGMENT_ARGUMENTS:Ljava/lang/String; = ":settings:show_fragment_args"

.field public static final EXTRA_SHOW_FRAGMENT_AS_SHORTCUT:Ljava/lang/String; = ":settings:show_fragment_as_shortcut"

.field public static final EXTRA_SHOW_FRAGMENT_AS_SUBSETTING:Ljava/lang/String; = ":settings:show_fragment_as_subsetting"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE:Ljava/lang/String; = ":settings:show_fragment_title"

.field public static final EXTRA_SHOW_FRAGMENT_TITLE_RESID:Ljava/lang/String; = ":settings:show_fragment_title_resid"

.field private static final EXTRA_UI_OPTIONS:Ljava/lang/String; = "settings:ui_options"

.field private static final LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings.FRAGMENT_CLASS"

.field private static final MSG_BUILD_CATEGORIES:I = 0x1

.field private static final MSG_DATA_FORCE_REFRESH:Ljava/lang/String; = "msg_data_force_refresh"

.field private static final SAVE_KEY_CATEGORIES:Ljava/lang/String; = ":settings:categories"

.field private static final SAVE_KEY_HOME_ACTIVITIES_COUNT:Ljava/lang/String; = ":settings:home_activities_count"

.field private static final SAVE_KEY_SEARCH_MENU_EXPANDED:Ljava/lang/String; = ":settings:search_menu_expanded"

.field private static final SAVE_KEY_SEARCH_QUERY:Ljava/lang/String; = ":settings:search_query"

.field private static final SAVE_KEY_SHOW_HOME_AS_UP:Ljava/lang/String; = ":settings:show_home_as_up"

.field private static final SAVE_KEY_SHOW_SEARCH:Ljava/lang/String; = ":settings:show_search"

.field private static sShowNoHomeNotice:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mContent:Landroid/view/ViewGroup;

.field private mDashboardHeaderKey:Ljava/lang/String;

.field private mDashboardIndexReceiver:Landroid/content/BroadcastReceiver;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mDisplayHomeAsUpEnabled:Z

.field private mDisplaySearch:Z

.field private final mDynamicIndexableContentMonitor:Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;

.field private mFragmentClass:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHomeActivitiesCount:I

.field private mInitialTitle:Ljava/lang/CharSequence;

.field private mInitialTitleResId:I

.field private mIsShortcut:Z

.field private mIsShowingDashboard:Z

.field private mNeedToMoveDashboardHeader:Z

.field private mNeedToRevertToInitialFragment:Z

.field private mNextButton:Landroid/widget/Button;

.field private mSearchMenuItem:Landroid/view/MenuItem;

.field private mSearchMenuItemExpanded:Z

.field private mSearchQuery:Ljava/lang/String;

.field private mSearchResultsFragment:Lcom/lenovo/settings/search/SearchResultsSummary;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 233
    sput-boolean v3, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 270
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-class v1, Lcom/flyme/deviceoriginalsettings/TetherSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-class v1, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-class v2, Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/lenovo/settings/nfc/NfcSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/flyme/deviceoriginalsettings/TetherSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/flyme/deviceoriginalsettings/DateTimeSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/flyme/deviceoriginalsettings/LocalePicker;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/flyme/deviceoriginalsettings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/flyme/deviceoriginalsettings/UserDictionarySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/flyme/deviceoriginalsettings/DisplaySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/lenovo/settings/AboutActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/flyme/deviceoriginalsettings/applications/ProcessStatsUi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/flyme/deviceoriginalsettings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/flyme/deviceoriginalsettings/SecuritySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/flyme/deviceoriginalsettings/PrivacySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-class v2, Lcom/flyme/deviceoriginalsettings/DeviceAdminSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-class v2, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-class v2, Lcom/flyme/deviceoriginalsettings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-class v2, Lcom/flyme/deviceoriginalsettings/tts/TextToSpeechSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-class v2, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-class v2, Lcom/flyme/deviceoriginalsettings/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-class v2, Lcom/flyme/deviceoriginalsettings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-class v2, Lcom/flyme/deviceoriginalsettings/nfc/AndroidBeam;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-class v2, Lcom/flyme/deviceoriginalsettings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-class v2, Lcom/flyme/deviceoriginalsettings/CryptKeeperSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-class v2, Lcom/flyme/deviceoriginalsettings/DataUsageSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-class v2, Lcom/flyme/deviceoriginalsettings/DreamSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-class v2, Lcom/flyme/deviceoriginalsettings/NotificationAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-class v2, Lcom/flyme/deviceoriginalsettings/accounts/ManageAccountsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-class v2, Lcom/flyme/deviceoriginalsettings/TrustedCredentialsSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-class v2, Lcom/flyme/deviceoriginalsettings/nfc/PaymentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-class v2, Lcom/flyme/deviceoriginalsettings/inputmethod/KeyboardLayoutPickerFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-class v2, Lcom/lenovo/settings/CharSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-class v2, Lcom/lenovo/settings/SysAppSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-class v2, Lcom/flyme/deviceoriginalsettings/accounts/AccountSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    .line 384
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Llenovo/app/ActionBarActivity;-><init>()V

    .line 408
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$1;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDashboardIndexReceiver:Landroid/content/BroadcastReceiver;

    .line 419
    new-instance v0, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;

    invoke-direct {v0}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;

    .line 437
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    .line 447
    new-instance v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$2;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHandler:Landroid/os/Handler;

    .line 463
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 464
    const/4 v0, 0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 466
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToMoveDashboardHeader:Z

    .line 467
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDashboardHeaderKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->invalidateCategories(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/SettingsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    return-void
.end method

.method private static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "firstElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 1577
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    .line 1581
    :cond_1
    if-eq v1, v3, :cond_2

    .line 1582
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1585
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1586
    .local v0, "nodeName":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1587
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML document must start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "tag; found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1590
    :cond_3
    return-void
.end method

.method private buildDashboardCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1129
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1130
    const v0, 0x7f060020

    invoke-direct {p0, v0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 1132
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->updateHeaderList(Ljava/util/List;)V

    .line 1133
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->sortHeaderList(Ljava/util/List;)V

    .line 1134
    return-void
.end method

.method private getHomeActivitiesCount()I
    .locals 2

    .prologue
    .line 905
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v0, "homeApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 907
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1
.end method

.method private getMetaData()V
    .locals 5

    .prologue
    .line 1434
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1436
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 1444
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1439
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1440
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 1442
    .local v1, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot get Metadata for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 976
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 977
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mFragmentClass:Ljava/lang/String;

    .line 992
    :cond_0
    :goto_0
    return-object v0

    .line 980
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 981
    .local v0, "intentClass":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 982
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateCategories(Z)V
    .locals 3
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v2, 0x1

    .line 512
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 514
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 515
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "msg_data_force_refresh"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 516
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 518
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private static isLikeShortCutIntent(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 892
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 901
    :cond_0
    :goto_0
    return v2

    .line 896
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v3, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 897
    sget-object v3, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->LIKE_SHORTCUT_INTENT_ACTION_ARRAY:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 898
    const/4 v2, 0x1

    goto :goto_0

    .line 896
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static isShortCutIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 888
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadHeadersFromResource(ILjava/util/List;)V
    .locals 18
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1137
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 1138
    .local v11, "res":Landroid/content/res/Resources;
    const/4 v10, 0x0

    .line 1140
    .local v10, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 1141
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 1142
    .local v2, "attrs":Landroid/util/AttributeSet;
    const-string v15, "preference-headers"

    invoke-static {v10, v15}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1145
    const/4 v8, 0x0

    .line 1146
    .local v8, "nodeName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1148
    .local v3, "curBundle":Landroid/os/Bundle;
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    .line 1150
    .local v9, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, "type":I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_13

    const/4 v15, 0x3

    if-ne v14, v15, :cond_1

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v9, :cond_13

    .line 1151
    :cond_1
    const/4 v15, 0x3

    if-eq v14, v15, :cond_0

    const/4 v15, 0x4

    if-eq v14, v15, :cond_0

    .line 1155
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1156
    const-string v15, "header"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 1157
    new-instance v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v5}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1159
    .local v5, "header":Landroid/preference/PreferenceActivity$Header;
    sget-object v15, Lcom/android/internal/R$styleable;->PreferenceHeader:[I

    invoke-virtual {v11, v2, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 1160
    .local v12, "sa":Landroid/content/res/TypedArray;
    const/4 v15, 0x1

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v5, Landroid/preference/PreferenceActivity$Header;->id:J

    .line 1161
    const/4 v15, 0x2

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1162
    .local v13, "tv":Landroid/util/TypedValue;
    if-eqz v13, :cond_2

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 1163
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_a

    .line 1164
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v5, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    .line 1169
    :cond_2
    :goto_1
    const/4 v15, 0x3

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1170
    if-eqz v13, :cond_3

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 1171
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_b

    .line 1172
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v5, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 1177
    :cond_3
    :goto_2
    const/4 v15, 0x5

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1178
    if-eqz v13, :cond_4

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 1179
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_c

    .line 1180
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 1185
    :cond_4
    :goto_3
    const/4 v15, 0x6

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 1186
    if-eqz v13, :cond_5

    iget v15, v13, Landroid/util/TypedValue;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 1187
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    if-eqz v15, :cond_d

    .line 1188
    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    iput v15, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1193
    :cond_5
    :goto_4
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    iput v15, v5, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    .line 1194
    const/4 v15, 0x4

    invoke-virtual {v12, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1195
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 1197
    if-nez v3, :cond_6

    .line 1198
    new-instance v3, Landroid/os/Bundle;

    .end local v3    # "curBundle":Landroid/os/Bundle;
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1201
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    :cond_6
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    .line 1203
    .local v6, "innerDepth":I
    :cond_7
    :goto_5
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_10

    const/4 v15, 0x3

    if-ne v14, v15, :cond_8

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v6, :cond_10

    .line 1204
    :cond_8
    const/4 v15, 0x3

    if-eq v14, v15, :cond_7

    const/4 v15, 0x4

    if-eq v14, v15, :cond_7

    .line 1208
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1209
    .local v7, "innerNodeName":Ljava/lang/String;
    const-string v15, "extra"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1210
    const-string v15, "extra"

    invoke-virtual {v11, v15, v2, v3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1211
    invoke-static {v10}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 1229
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "curBundle":Landroid/os/Bundle;
    .end local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v6    # "innerDepth":I
    .end local v7    # "innerNodeName":Ljava/lang/String;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tv":Landroid/util/TypedValue;
    .end local v14    # "type":I
    :catch_0
    move-exception v4

    .line 1230
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Error parsing headers"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1234
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v15

    if-eqz v10, :cond_9

    .line 1235
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    throw v15

    .line 1166
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    .restart local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v12    # "sa":Landroid/content/res/TypedArray;
    .restart local v13    # "tv":Landroid/util/TypedValue;
    .restart local v14    # "type":I
    :cond_a
    :try_start_2
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v5, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1231
    .end local v2    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "curBundle":Landroid/os/Bundle;
    .end local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v8    # "nodeName":Ljava/lang/String;
    .end local v9    # "outerDepth":I
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tv":Landroid/util/TypedValue;
    .end local v14    # "type":I
    :catch_1
    move-exception v4

    .line 1232
    .local v4, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "Error parsing headers"

    move-object/from16 v0, v16

    invoke-direct {v15, v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1174
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "attrs":Landroid/util/AttributeSet;
    .restart local v3    # "curBundle":Landroid/os/Bundle;
    .restart local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v8    # "nodeName":Ljava/lang/String;
    .restart local v9    # "outerDepth":I
    .restart local v12    # "sa":Landroid/content/res/TypedArray;
    .restart local v13    # "tv":Landroid/util/TypedValue;
    .restart local v14    # "type":I
    :cond_b
    :try_start_4
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v5, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 1182
    :cond_c
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 1190
    :cond_d
    iget-object v15, v13, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    iput-object v15, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 1212
    .restart local v6    # "innerDepth":I
    .restart local v7    # "innerNodeName":Ljava/lang/String;
    :cond_e
    const-string v15, "intent"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 1213
    invoke-static {v11, v10, v2}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v15

    iput-object v15, v5, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 1215
    :cond_f
    invoke-static {v10}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 1219
    .end local v7    # "innerNodeName":Ljava/lang/String;
    :cond_10
    invoke-virtual {v3}, Landroid/os/Bundle;->size()I

    move-result v15

    if-lez v15, :cond_11

    .line 1220
    iput-object v3, v5, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1221
    const/4 v3, 0x0

    .line 1224
    :cond_11
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1226
    .end local v5    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v6    # "innerDepth":I
    .end local v12    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tv":Landroid/util/TypedValue;
    :cond_12
    invoke-static {v10}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 1234
    :cond_13
    if-eqz v10, :cond_14

    .line 1235
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 1238
    :cond_14
    return-void
.end method

.method public static requestHomeNotice()V
    .locals 1

    .prologue
    .line 1461
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->sShowNoHomeNotice:Z

    .line 1462
    return-void
.end method

.method private setTitleFromBackStack()I
    .locals 4

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 927
    .local v1, "count":I
    if-nez v1, :cond_1

    .line 928
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    if-lez v2, :cond_0

    .line 929
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(I)V

    .line 935
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    .line 936
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->invalidateOptionsMenu()V

    .line 938
    const/4 v1, 0x0

    .line 944
    .end local v1    # "count":I
    :goto_1
    return v1

    .line 931
    .restart local v1    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 941
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->getBackStackEntryAt(I)Landroid/app/FragmentManager$BackStackEntry;

    move-result-object v0

    .line 942
    .local v0, "bse":Landroid/app/FragmentManager$BackStackEntry;
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V

    goto :goto_1
.end method

.method private setTitleFromBackStackEntry(Landroid/app/FragmentManager$BackStackEntry;)V
    .locals 2
    .param p1, "bse"    # Landroid/app/FragmentManager$BackStackEntry;

    .prologue
    .line 949
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitleRes()I

    move-result v1

    .line 950
    .local v1, "titleRes":I
    if-lez v1, :cond_1

    .line 951
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 955
    .local v0, "title":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 958
    :cond_0
    return-void

    .line 953
    .end local v0    # "title":Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {p1}, Landroid/app/FragmentManager$BackStackEntry;->getBreadCrumbTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private setTitleFromIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 911
    const-string v2, ":settings:show_fragment_title_resid"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 912
    .local v1, "initialTitleResId":I
    if-lez v1, :cond_0

    .line 913
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 914
    iput v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    .line 915
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(I)V

    .line 922
    :goto_0
    return-void

    .line 917
    :cond_0
    iput v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    .line 918
    const-string v2, ":settings:show_fragment_title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "initialTitle":Ljava/lang/String;
    if-eqz v0, :cond_1

    .end local v0    # "initialTitle":Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    .line 920
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 919
    .restart local v0    # "initialTitle":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method private static final skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1594
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 1598
    .local v0, "outerDepth":I
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "type":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-gt v2, v0, :cond_0

    .line 1601
    :cond_1
    return-void
.end method

.method private sortHeaderList(Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1365
    .local p1, "source":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    .local v14, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-static/range {p0 .. p0}, Lcom/lenovo/settings/DashboardSortUtil;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/DashboardSortUtil;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/lenovo/settings/DashboardSortUtil;->parseJsonToList()Ljava/util/List;

    move-result-object v8

    .line 1367
    .local v8, "index":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_5

    .line 1368
    const-string v16, "Settings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "index.size() "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1374
    .local v12, "startTime":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 1375
    .local v11, "sourceSize":I
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 1377
    .local v9, "indexSize":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_4

    .line 1378
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1379
    .local v15, "title":Ljava/lang/String;
    if-nez v15, :cond_1

    .line 1377
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1383
    :cond_1
    const/4 v2, 0x0

    .line 1386
    .local v2, "a":I
    :goto_2
    if-ge v2, v11, :cond_0

    .line 1387
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceActivity$Header;

    .line 1388
    .local v6, "header":Landroid/preference/PreferenceActivity$Header;
    iget-object v3, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    check-cast v3, Ljava/lang/String;

    .line 1389
    .local v3, "breadCrumbShortTitle":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1392
    const-string v16, "section"

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1393
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 1394
    .local v4, "categoryHeader":Landroid/preference/PreferenceActivity$Header;
    const-string v16, "section"

    move-object/from16 v0, v16

    iput-object v0, v4, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 1395
    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1397
    .end local v4    # "categoryHeader":Landroid/preference/PreferenceActivity$Header;
    :cond_2
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 1398
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1403
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1407
    .end local v2    # "a":I
    .end local v3    # "breadCrumbShortTitle":Ljava/lang/String;
    .end local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v15    # "title":Ljava/lang/String;
    :cond_4
    const-string v16, "Settings"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " elipse time: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v12

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " target size "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 1411
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1414
    .end local v7    # "i":I
    .end local v9    # "indexSize":I
    .end local v11    # "sourceSize":I
    .end local v12    # "startTime":J
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1415
    const/4 v5, 0x0

    .line 1416
    .local v5, "foundFirstCategory":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1417
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/preference/PreferenceActivity$Header;>;"
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1418
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceActivity$Header;

    .line 1419
    .restart local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    const-string v16, "section"

    iget-object v0, v6, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1420
    if-eqz v5, :cond_6

    .line 1421
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1423
    :cond_6
    const/4 v5, 0x1

    goto :goto_3

    .line 1426
    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    .line 1430
    .end local v5    # "foundFirstCategory":Z
    .end local v6    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/preference/PreferenceActivity$Header;>;"
    :cond_8
    return-void
.end method

.method private switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;
    .locals 5
    .param p1, "fragmentName"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "validate"    # Z
    .param p4, "addToBackStack"    # Z
    .param p5, "titleResId"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "withTransition"    # Z

    .prologue
    .line 1094
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1095
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid fragment for this activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1098
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 1099
    .local v0, "f":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1100
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    const v2, 0x7f0b0140

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1101
    if-eqz p7, :cond_1

    .line 1102
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    invoke-static {v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1104
    :cond_1
    if-eqz p4, :cond_2

    .line 1105
    const-string v2, ":settings:prefs"

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1107
    :cond_2
    if-lez p5, :cond_4

    .line 1108
    invoke-virtual {v1, p5}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;

    .line 1112
    :cond_3
    :goto_0
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1113
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1114
    return-object v0

    .line 1109
    :cond_4
    if-eqz p6, :cond_3

    .line 1110
    invoke-virtual {v1, p6}, Landroid/app/FragmentTransaction;->setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method private switchToSearchResultsFragmentIfNeeded()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1504
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/lenovo/settings/search/SearchResultsSummary;

    if-eqz v0, :cond_0

    .line 1517
    :goto_0
    return-void

    .line 1507
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b0140

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v8

    .line 1508
    .local v8, "current":Landroid/app/Fragment;
    if-eqz v8, :cond_1

    instance-of v0, v8, Lcom/lenovo/settings/search/SearchResultsSummary;

    if-eqz v0, :cond_1

    .line 1509
    check-cast v8, Lcom/lenovo/settings/search/SearchResultsSummary;

    .end local v8    # "current":Landroid/app/Fragment;
    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/lenovo/settings/search/SearchResultsSummary;

    .line 1515
    :goto_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/lenovo/settings/search/SearchResultsSummary;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 1516
    iput-boolean v4, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    goto :goto_0

    .line 1511
    .restart local v8    # "current":Landroid/app/Fragment;
    :cond_1
    const-class v0, Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v5, v3

    move-object v6, v2

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/search/SearchResultsSummary;

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/lenovo/settings/search/SearchResultsSummary;

    goto :goto_1
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1241
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    iget-object v9, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v10, "show"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v12, "eng"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1242
    .local v8, "showDev":Z
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v5

    .line 1243
    .local v5, "isGuestMode":Z
    const/4 v2, 0x0

    .line 1246
    .local v2, "i":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_13

    .line 1247
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1249
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    iget-wide v10, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v10

    .line 1250
    .local v3, "id":I
    const v9, 0x7f0b0022

    if-ne v3, v9, :cond_8

    .line 1251
    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1252
    .local v7, "pluginKey":Ljava/lang/String;
    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v9, :cond_1

    .line 1253
    invoke-static {v7}, Lcom/lenovo/settings/pluginItem/PluginItemManager;->getHeaderPluginItem(Ljava/lang/String;)Lcom/lenovo/settings/pluginItem/PluginItemInfo;

    move-result-object v6

    .line 1255
    .local v6, "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    :try_start_0
    invoke-virtual {v6}, Lcom/lenovo/settings/pluginItem/PluginItemInfo;->getIntentDescription()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    iput-object v9, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    .end local v6    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    :cond_1
    :goto_1
    const-string v9, "fingerprint_settings"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1261
    const-string v9, "1"

    const-string v10, "ro.lenovo.fingerprint.feature"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1262
    .local v4, "isFPSupport":Z
    if-nez v5, :cond_5

    if-eqz v4, :cond_5

    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-static {p0, v9}, Lcom/flyme/deviceoriginalsettings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1275
    .end local v4    # "isFPSupport":Z
    :cond_2
    :goto_2
    if-eqz v5, :cond_4

    const-string v9, "lock_settings"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "applications_settings"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1277
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1358
    .end local v7    # "pluginKey":Ljava/lang/String;
    :cond_4
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_0

    .line 1359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1265
    .restart local v4    # "isFPSupport":Z
    .restart local v7    # "pluginKey":Ljava/lang/String;
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1267
    .end local v4    # "isFPSupport":Z
    :cond_6
    iget-object v9, v1, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-static {p0, v9}, Lcom/flyme/deviceoriginalsettings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 1268
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1269
    :cond_7
    const-string v9, "multi_sim_settings"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1270
    const-string v9, "ct"

    const-string v10, "ro.lenovo.operator"

    const-string v11, "open"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1271
    const v9, 0x7f0c0195

    iput v9, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    goto :goto_2

    .line 1291
    .end local v7    # "pluginKey":Ljava/lang/String;
    :cond_8
    const v9, 0x7f0b024d

    if-ne v3, v9, :cond_9

    .line 1292
    const-class v9, Lcom/lenovo/settings/LenovoWirelessSettings;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto :goto_3

    .line 1293
    :cond_9
    const v9, 0x7f0b024a

    if-ne v3, v9, :cond_b

    .line 1295
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isBQBPass()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1296
    const v9, 0x7f02007c

    iput v9, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto :goto_3

    .line 1298
    :cond_a
    const v9, 0x7f02007b

    iput v9, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    goto :goto_3

    .line 1301
    :cond_b
    const v9, 0x7f0b025b

    if-ne v3, v9, :cond_c

    .line 1302
    const-class v9, Lcom/lenovo/settings/AboutActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto :goto_3

    .line 1303
    :cond_c
    const v9, 0x7f0b0258

    if-ne v3, v9, :cond_d

    .line 1304
    const-class v9, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto :goto_3

    .line 1316
    :cond_d
    const v9, 0x7f0b0259

    if-ne v3, v9, :cond_e

    .line 1317
    const-string v9, "row"

    const-string v10, "ro.lenovo.region"

    const-string v11, "prc"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1318
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1320
    :cond_e
    const v9, 0x7f0b024c

    if-ne v3, v9, :cond_f

    .line 1321
    invoke-static {p0, p1, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto/16 :goto_3

    .line 1341
    :cond_f
    const v9, 0x7f0b025a

    if-ne v3, v9, :cond_10

    .line 1342
    if-nez v8, :cond_4

    .line 1343
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1345
    :cond_10
    const v9, 0x7f0b0253

    if-eq v3, v9, :cond_11

    const v9, 0x7f0b0254

    if-eq v3, v9, :cond_11

    const v9, 0x7f0b0257

    if-ne v3, v9, :cond_12

    .line 1347
    :cond_11
    if-eqz v5, :cond_4

    .line 1348
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1350
    :cond_12
    const v9, 0x7f0b024b

    if-ne v3, v9, :cond_4

    .line 1351
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 1352
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_4

    .line 1353
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1362
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    .end local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .end local v3    # "id":I
    :cond_13
    return-void

    .line 1256
    .restart local v1    # "header":Landroid/preference/PreferenceActivity$Header;
    .restart local v3    # "id":I
    .restart local v6    # "plugin":Lcom/lenovo/settings/pluginItem/PluginItemInfo;
    .restart local v7    # "pluginKey":Ljava/lang/String;
    :catch_0
    move-exception v9

    goto/16 :goto_1
.end method


# virtual methods
.method public finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V
    .locals 0
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    .prologue
    .line 1066
    invoke-virtual {p0, p2, p3}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 1067
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->finish()V

    .line 1068
    return-void
.end method

.method public getDashboardCategories(Z)Ljava/util/List;
    .locals 1
    .param p1, "forceRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->buildDashboardCategories(Ljava/util/List;)V

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDashboardHeaderKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1553
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDashboardHeaderKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 866
    invoke-super {p0}, Llenovo/app/ActionBarActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 867
    .local v4, "superIntent":Landroid/content/Intent;
    invoke-direct {p0, v4}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 870
    .local v3, "startingFragment":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 871
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 872
    .local v2, "modIntent":Landroid/content/Intent;
    const-string v5, ":settings:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 874
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 875
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0    # "args":Landroid/os/Bundle;
    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 879
    .end local v1    # "args":Landroid/os/Bundle;
    .restart local v0    # "args":Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 880
    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 883
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 877
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v2    # "modIntent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "args":Landroid/os/Bundle;
    goto :goto_0

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "modIntent":Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 883
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getSwitchBar()Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    return-object v0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 963
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 964
    sget-object v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->ENTRY_FRAGMENTS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 965
    const/4 v1, 0x1

    .line 968
    :goto_1
    return v1

    .line 963
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public needToMoveDashboardHeader()Z
    .locals 1

    .prologue
    .line 1549
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToMoveDashboardHeader:Z

    return v0
.end method

.method public needToRevertToInitialFragment()V
    .locals 1

    .prologue
    .line 1520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1521
    return-void
.end method

.method public onBackPressed()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 779
    :try_start_0
    invoke-super {p0}, Llenovo/app/ActionBarActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v9

    .line 781
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v8

    .line 783
    .local v8, "count":I
    if-nez v8, :cond_0

    .line 784
    const v0, 0x7f0c0532

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    .line 785
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitle(I)V

    .line 786
    const-class v0, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v5, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    move-object v0, p0

    move v4, v3

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto :goto_0

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->revertToInitialFragmentFromRecent()V

    goto :goto_0
.end method

.method public onBackStackChanged()V
    .locals 0

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitleFromBackStack()I

    .line 774
    return-void
.end method

.method public onClose()Z
    .locals 1

    .prologue
    .line 1482
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 699
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 700
    invoke-static {p0}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/search/Index;->update()V

    .line 701
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    .line 522
    invoke-super/range {p0 .. p1}, Llenovo/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 525
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getMetaData()V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v19

    .line 528
    .local v19, "intent":Landroid/content/Intent;
    const-string v2, "settings:ui_options"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v5, "settings:ui_options"

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/Window;->setUiOptions(I)V

    .line 532
    :cond_0
    const-string v2, "development"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 536
    const-string v2, ":settings:show_fragment"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, "initialFragmentName":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->isShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static/range {v19 .. v19}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->isLikeShortCutIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ":settings:show_fragment_as_shortcut"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_1
    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShortcut:Z

    .line 541
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v18

    .line 542
    .local v18, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v17

    .line 544
    .local v17, "className":Ljava/lang/String;
    const-class v2, Lcom/flyme/deviceoriginalsettings/Settings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShowingDashboard:Z

    .line 550
    const-string v2, "com.android.settings.Settings"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_2
    const/16 v20, 0x1

    .line 563
    .local v20, "isSubSettings":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_b

    const v2, 0x7f0400a6

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setContentView(I)V

    .line 566
    const v2, 0x7f0b0140

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mContent:Landroid/view/ViewGroup;

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 570
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShowingDashboard:Z

    if-eqz v2, :cond_3

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/search/Index;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/search/Index;->update()V

    .line 574
    :cond_3
    if-eqz p1, :cond_c

    .line 577
    const-string v2, ":settings:search_menu_expanded"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 578
    const-string v2, ":settings:search_query"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 580
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 582
    const-string v2, ":settings:categories"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 584
    .local v16, "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    if-eqz v16, :cond_4

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 587
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitleFromBackStack()I

    .line 590
    :cond_4
    const-string v2, ":settings:show_home_as_up"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 591
    const-string v2, ":settings:show_search"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    .line 592
    const-string v2, ":settings:home_activities_count"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 626
    .end local v16    # "categories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/preference/PreferenceActivity$Header;>;"
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_5

    .line 628
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 631
    if-nez v20, :cond_5

    .line 632
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 635
    :cond_5
    const v2, 0x7f0b0141

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSwitchBar:Lcom/flyme/deviceoriginalsettings/widget/SwitchBar;

    .line 638
    const-string v2, "extra_prefs_show_button_bar"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 640
    const v2, 0x7f0b00e5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 641
    .local v14, "buttonBar":Landroid/view/View;
    if-eqz v14, :cond_8

    .line 642
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 644
    const v2, 0x7f0b00e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 645
    .local v13, "backButton":Landroid/widget/Button;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/SettingsActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$3;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    const v2, 0x7f0b00e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 653
    .local v21, "skipButton":Landroid/widget/Button;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/SettingsActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$4;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 660
    const v2, 0x7f0b0052

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    new-instance v5, Lcom/flyme/deviceoriginalsettings/SettingsActivity$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$5;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 671
    const-string v2, "extra_prefs_set_next_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 672
    .local v15, "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 679
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_6
    :goto_4
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 680
    const-string v2, "extra_prefs_set_back_text"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 681
    .restart local v15    # "buttonText":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 682
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 688
    .end local v15    # "buttonText":Ljava/lang/String;
    :cond_7
    :goto_5
    const-string v2, "extra_prefs_show_skip"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 689
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 694
    .end local v13    # "backButton":Landroid/widget/Button;
    .end local v14    # "buttonBar":Landroid/view/View;
    .end local v21    # "skipButton":Landroid/widget/Button;
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 695
    return-void

    .line 538
    .end local v17    # "className":Ljava/lang/String;
    .end local v18    # "cn":Landroid/content/ComponentName;
    .end local v20    # "isSubSettings":Z
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 550
    .restart local v17    # "className":Ljava/lang/String;
    .restart local v18    # "cn":Landroid/content/ComponentName;
    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 563
    .restart local v20    # "isSubSettings":Z
    :cond_b
    const v2, 0x7f0400a7

    goto/16 :goto_2

    .line 595
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShowingDashboard:Z

    if-nez v2, :cond_f

    .line 598
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShortcut:Z

    if-eqz v2, :cond_d

    .line 599
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 600
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    .line 608
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->setTitleFromIntent(Landroid/content/Intent;)V

    .line 610
    const-string v2, ":settings:show_fragment_args"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 611
    .local v4, "initialArguments":Landroid/os/Bundle;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    goto/16 :goto_3

    .line 601
    .end local v4    # "initialArguments":Landroid/os/Bundle;
    :cond_d
    if-eqz v20, :cond_e

    .line 602
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 603
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 605
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 606
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    goto :goto_6

    .line 615
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    .line 617
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    .line 618
    const v2, 0x7f0c0532

    move-object/from16 v0, p0

    iput v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    .line 619
    const-class v2, Lcom/flyme/deviceoriginalsettings/dashboard/DashboardSummary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitleResId:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mInitialTitle:Ljava/lang/CharSequence;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToFragment(Ljava/lang/String;Landroid/os/Bundle;ZZILjava/lang/CharSequence;Z)Landroid/app/Fragment;

    .line 621
    invoke-static {}, Lcom/lenovo/settings/LPSReaper;->trackLaunchSettings()V

    .line 622
    invoke-static/range {p0 .. p0}, Lcom/lenovo/settings/DashboardSortUtil;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/DashboardSortUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/DashboardSortUtil;->uploadDashboardSortEvents()V

    goto/16 :goto_3

    .line 676
    .restart local v13    # "backButton":Landroid/widget/Button;
    .restart local v14    # "buttonBar":Landroid/view/View;
    .restart local v15    # "buttonText":Ljava/lang/String;
    .restart local v21    # "skipButton":Landroid/widget/Button;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 685
    :cond_11
    invoke-virtual {v13, v15}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 817
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/Utils;->isGuestMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v4

    .line 848
    :goto_0
    return v2

    .line 821
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 822
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f100002

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 825
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 827
    .local v1, "query":Ljava/lang/String;
    const v2, 0x7f0b0269

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    .line 828
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    .line 830
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v2, :cond_3

    :cond_2
    move v2, v4

    .line 831
    goto :goto_0

    .line 834
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/lenovo/settings/search/SearchResultsSummary;

    if-eqz v2, :cond_4

    .line 835
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/lenovo/settings/search/SearchResultsSummary;

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Lcom/lenovo/settings/search/SearchResultsSummary;->setSearchView(Landroid/widget/SearchView;)V

    .line 838
    :cond_4
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 839
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    const v4, 0x7f0c02e1

    invoke-virtual {p0, v4}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 840
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 841
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, p0}, Landroid/widget/SearchView;->setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V

    .line 843
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v2, :cond_5

    .line 844
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->expandActionView()Z

    .line 846
    :cond_5
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    move v2, v3

    .line 848
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 804
    invoke-super {p0}, Llenovo/app/ActionBarActivity;->onDestroy()V

    .line 806
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 808
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 812
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDashboardIndexReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 813
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1495
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1496
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->revertToInitialFragment()V

    .line 1500
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1487
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1488
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1490
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 854
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 861
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 857
    :pswitch_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->finish()V

    .line 858
    const/4 v0, 0x1

    goto :goto_0

    .line 854
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 796
    invoke-super {p0}, Llenovo/app/ActionBarActivity;->onPause()V

    .line 799
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v0}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->unregister()V

    .line 800
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "caller"    # Landroid/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 490
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 491
    .local v3, "titleRes":I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/flyme/deviceoriginalsettings/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    const v3, 0x7f0c06db

    .line 501
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 503
    const/4 v0, 0x1

    return v0

    .line 493
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/flyme/deviceoriginalsettings/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    const v3, 0x7f0c055d

    goto :goto_0

    .line 498
    :cond_2
    const v3, 0x7f0c055b

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1474
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/lenovo/settings/search/SearchResultsSummary;

    if-nez v0, :cond_0

    .line 1475
    const/4 v0, 0x0

    .line 1477
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 1466
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->switchToSearchResultsFragmentIfNeeded()V

    .line 1467
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    .line 1468
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-virtual {v0, p1}, Lcom/lenovo/settings/search/SearchResultsSummary;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 741
    invoke-super {p0}, Llenovo/app/ActionBarActivity;->onResume()V

    .line 743
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getHomeActivitiesCount()I

    move-result v0

    .line 744
    .local v0, "newHomeActivityCount":I
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    if-eq v0, v1, :cond_0

    .line 745
    iput v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    .line 746
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->invalidateCategories(Z)V

    .line 749
    :cond_0
    new-instance v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity$6;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity$6;-><init>(Lcom/flyme/deviceoriginalsettings/SettingsActivity;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 756
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 761
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDashboardIndexReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.settings.ACTION_DASHBOARD_INDEx_CLEARED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 764
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDynamicIndexableContentMonitor:Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;

    invoke-virtual {v1, p0}, Lcom/lenovo/settings/search/DynamicIndexableContentMonitor;->register(Landroid/content/Context;)V

    .line 766
    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 767
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchQuery:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->onQueryTextSubmit(Ljava/lang/String;)Z

    .line 769
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 714
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 716
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 717
    const-string v2, ":settings:categories"

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 720
    :cond_0
    const-string v2, ":settings:show_home_as_up"

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplayHomeAsUpEnabled:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 721
    const-string v2, ":settings:show_search"

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 723
    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDisplaySearch:Z

    if-eqz v2, :cond_1

    .line 729
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 730
    .local v0, "isExpanded":Z
    :goto_0
    const-string v2, ":settings:search_menu_expanded"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 732
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "query":Ljava/lang/String;
    :goto_1
    const-string v2, ":settings:search_query"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    .end local v0    # "isExpanded":Z
    .end local v1    # "query":Ljava/lang/String;
    :cond_1
    const-string v2, ":settings:home_activities_count"

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mHomeActivitiesCount:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    return-void

    .line 729
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 732
    .restart local v0    # "isExpanded":Z
    :cond_3
    const-string v1, ""

    goto :goto_1
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 705
    invoke-super {p0}, Llenovo/app/ActionBarActivity;->onStart()V

    .line 707
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->revertToInitialFragment()V

    .line 710
    :cond_0
    return-void
.end method

.method public revertDashboardToInitial()V
    .locals 1

    .prologue
    .line 1557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToMoveDashboardHeader:Z

    .line 1558
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDashboardHeaderKey:Ljava/lang/String;

    .line 1559
    return-void
.end method

.method public revertToInitialFragment()V
    .locals 2

    .prologue
    .line 1524
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->revertToInitialFragment(ZLjava/lang/String;)V

    .line 1525
    return-void
.end method

.method public revertToInitialFragment(ZLjava/lang/String;)V
    .locals 4
    .param p1, "moveToHeader"    # Z
    .param p2, "prefKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1528
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchResultsFragment:Lcom/lenovo/settings/search/SearchResultsSummary;

    .line 1530
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItemExpanded:Z

    .line 1534
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    :goto_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mSearchMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 1542
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1543
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToMoveDashboardHeader:Z

    .line 1544
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mDashboardHeaderKey:Ljava/lang/String;

    .line 1546
    :cond_1
    return-void

    .line 1536
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public revertToInitialFragmentFromRecent()V
    .locals 3

    .prologue
    .line 1562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mNeedToRevertToInitialFragment:Z

    .line 1567
    :try_start_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":settings:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    :goto_0
    return-void

    .line 1569
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "targetIntent"    # Landroid/content/Intent;

    .prologue
    .line 1457
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Llenovo/app/ActionBarActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public startPreferenceFragment(Landroid/app/Fragment;Z)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "push"    # Z

    .prologue
    .line 1078
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1079
    .local v0, "transaction":Landroid/app/FragmentTransaction;
    const v1, 0x7f0b0140

    invoke-virtual {v0, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1080
    if-eqz p2, :cond_0

    .line 1081
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 1082
    const-string v1, ":settings:prefs"

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1086
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1087
    return-void

    .line 1084
    :cond_0
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V
    .locals 8
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "resultTo"    # Landroid/app/Fragment;
    .param p6, "resultRequestCode"    # I

    .prologue
    .line 1016
    const/4 v6, 0x0

    .line 1017
    .local v6, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 1018
    if-eqz p4, :cond_1

    .line 1019
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1025
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move v5, p3

    invoke-static/range {v0 .. v7}, Lcom/flyme/deviceoriginalsettings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 1027
    return-void

    .line 1022
    :cond_1
    const-string v6, ""

    goto :goto_0
.end method

.method public startPreferencePanelAsUser(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/os/UserHandle;)V
    .locals 7
    .param p1, "fragmentClass"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "titleRes"    # I
    .param p4, "titleText"    # Ljava/lang/CharSequence;
    .param p5, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 1043
    const/4 v4, 0x0

    .line 1044
    .local v4, "title":Ljava/lang/String;
    if-gez p3, :cond_0

    .line 1045
    if-eqz p4, :cond_1

    .line 1046
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1052
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->mIsShortcut:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/Utils;->startWithFragmentAsUser(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;ZLandroid/os/UserHandle;)V

    .line 1054
    return-void

    .line 1049
    :cond_1
    const-string v4, ""

    goto :goto_0
.end method
