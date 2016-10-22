.class public Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
.super Landroid/preference/CheckBoxPreference;
.source "InputMethodPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;
    }
.end annotation


# static fields
.field private static final CLICK_TIME:I = 0x3e8

.field private static final EVENT_SAVE_IME_SETTINGS:I = 0x3e9

.field private static final HANDLER_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastTonchTime:J

.field private final mCollator:Ljava/text/Collator;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

.field private final mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPref:Landroid/view/View;

.field private mInputMethodSettingsButton:Landroid/widget/ImageView;

.field private final mIsSystemIme:Z

.field private final mIsValidSystemNonAuxAsciiCapableIme:Z

.field private mOnImePreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mSettingsIntent:Landroid/content/Intent;

.field private mSummaryText:Landroid/widget/TextView;

.field private mTitleText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 4
    .param p1, "fragment"    # Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
    .param p2, "settingsIntent"    # Landroid/content/Intent;
    .param p3, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p4, "imi"    # Landroid/view/inputmethod/InputMethodInfo;

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0d002b

    invoke-direct {p0, v1, v3, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 76
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->lastTonchTime:J

    .line 99
    const v1, 0x7f040087

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->setLayoutResource(I)V

    .line 100
    const v1, 0x7f040088

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->setWidgetLayoutResource(I)V

    .line 101
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    .line 102
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    .line 103
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 104
    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    .line 105
    invoke-static {p4}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    .line 106
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mCollator:Ljava/text/Collator;

    .line 107
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 108
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->isValidSystemNonAuxAsciiCapableIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mIsValidSystemNonAuxAsciiCapableIme:Z

    .line 110
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)J
    .locals 2
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->lastTonchTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;J)J
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    .param p1, "x1"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->lastTonchTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->onInputMethodPrefClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)Landroid/view/inputmethod/InputMethodInfo;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->setChecked(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->saveImeSettings()V

    return-void
.end method

.method private getSummaryString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v4

    .line 281
    .local v4, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    .line 282
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 283
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_0
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    invoke-virtual {v5}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 287
    .local v3, "subtypeLabel":Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 289
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "subtypeLabel":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private onInputMethodPrefClicked()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    const/16 v1, 0x3e9

    .line 194
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;

    invoke-direct {v0, p0, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$1;)V

    invoke-virtual {v0, v1, v4, v5}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 200
    :cond_1
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v0, :cond_2

    .line 201
    new-instance v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;

    invoke-direct {v0, p0, v2}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$1;)V

    invoke-virtual {v0, v1, v4, v5}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$SaveImeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {p0, v0, p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V

    goto :goto_0
.end method

.method private saveImeSettings()V
    .locals 5

    .prologue
    .line 374
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v3, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setChecked(ZZ)V
    .locals 0
    .param p1, "checked"    # Z
    .param p2, "save"    # Z

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 308
    if-eqz p2, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->saveImeSettings()V

    .line 314
    :cond_0
    return-void
.end method

.method private showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V
    .locals 7
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "chkPref"    # Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .prologue
    const/4 v3, 0x1

    .line 321
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 324
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$5;

    invoke-direct {v2, p0, p2}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$5;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$4;

    invoke-direct {v2, p0, p2}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$4;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    .line 344
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c08b1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mFragment:Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    invoke-virtual {v6}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 348
    return-void
.end method

.method private updateSummary()V
    .locals 2

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->getSummaryString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "summary":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 9
    .param p1, "p"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 352
    instance-of v8, p1, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    if-nez v8, :cond_1

    .line 353
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v5

    .line 370
    :cond_0
    :goto_0
    return v5

    :cond_1
    move-object v0, p1

    .line 355
    check-cast v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;

    .line 356
    .local v0, "imp":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;
    iget-boolean v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mIsValidSystemNonAuxAsciiCapableIme:Z

    if-eqz v8, :cond_2

    move v1, v5

    .line 357
    .local v1, "priority0":Z
    :goto_1
    iget-boolean v8, v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mIsSystemIme:Z

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mIsValidSystemNonAuxAsciiCapableIme:Z

    if-eqz v8, :cond_3

    move v2, v5

    .line 358
    .local v2, "priority1":Z
    :goto_2
    if-ne v1, v2, :cond_5

    .line 359
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 360
    .local v3, "t0":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 361
    .local v4, "t1":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 364
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    .line 365
    goto :goto_0

    .end local v1    # "priority0":Z
    .end local v2    # "priority1":Z
    .end local v3    # "t0":Ljava/lang/CharSequence;
    .end local v4    # "t1":Ljava/lang/CharSequence;
    :cond_2
    move v1, v6

    .line 356
    goto :goto_1

    .restart local v1    # "priority0":Z
    :cond_3
    move v2, v6

    .line 357
    goto :goto_2

    .line 367
    .restart local v2    # "priority1":Z
    .restart local v3    # "t0":Ljava/lang/CharSequence;
    .restart local v4    # "t1":Ljava/lang/CharSequence;
    :cond_4
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mCollator:Ljava/text/Collator;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 370
    .end local v3    # "t0":Ljava/lang/CharSequence;
    .end local v4    # "t1":Ljava/lang/CharSequence;
    :cond_5
    if-eqz v1, :cond_0

    move v5, v7

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, Landroid/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 116
    const v3, 0x7f0b00e0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    .line 118
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    new-instance v4, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$1;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$1;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    const v3, 0x7f0b00e1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    .line 132
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    .line 133
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    .line 134
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-le v3, v0, :cond_3

    .line 135
    .local v0, "hasSubtypes":Z
    :goto_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "imiId":Ljava/lang/String;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    new-instance v4, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$2;

    invoke-direct {v4, p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$2;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_0
    if-eqz v0, :cond_1

    .line 169
    new-instance v2, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$3;

    invoke-direct {v2, p0, v1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference$3;-><init>(Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;Ljava/lang/String;)V

    .line 179
    .local v2, "listener":Landroid/view/View$OnLongClickListener;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    .end local v2    # "listener":Landroid/view/View$OnLongClickListener;
    :cond_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mSettingsIntent:Landroid/content/Intent;

    if-nez v3, :cond_2

    .line 182
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 185
    return-void

    .line 134
    .end local v0    # "hasSubtypes":Z
    .end local v1    # "imiId":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 191
    return-void
.end method

.method public setOnImePreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mOnImePreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 318
    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .locals 9
    .param p1, "caller"    # Landroid/app/Fragment;
    .param p2, "fragmentClass"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 261
    .local v8, "activity":Landroid/app/Activity;
    instance-of v2, v8, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    if-eqz v2, :cond_0

    move-object v0, v8

    .line 262
    check-cast v0, Lcom/flyme/deviceoriginalsettings/SettingsActivity;

    .line 263
    .local v0, "sa":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 264
    const/4 v2, 0x1

    .line 274
    .end local v0    # "sa":Lcom/flyme/deviceoriginalsettings/SettingsActivity;
    :goto_0
    return v2

    .line 265
    :cond_0
    instance-of v2, v8, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v8

    .line 266
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 267
    .local v1, "pa":Landroid/preference/PreferenceActivity;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p4

    move-object v6, p1

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 268
    const/4 v2, 0x1

    goto :goto_0

    .line 270
    .end local v1    # "pa":Landroid/preference/PreferenceActivity;
    :cond_1
    sget-object v2, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requestCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updatePreferenceViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 209
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->isAlwaysCheckedIme(Landroid/view/inputmethod/InputMethodInfo;Landroid/content/Context;)Z

    move-result v2

    .line 212
    .local v2, "isAlwaysChecked":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5, v6}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->isInputmethodLatinIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v3

    .line 220
    .local v3, "isLatinIme":Z
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v4

    .line 221
    .local v4, "oldChecked":Z
    if-eqz v3, :cond_5

    .line 222
    invoke-super {p0, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 223
    invoke-super {p0, v9}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 224
    if-nez v4, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->saveImeSettings()V

    .line 231
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v0

    .line 232
    .local v0, "checked":Z
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    .line 233
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 234
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 236
    if-nez v0, :cond_1

    .line 237
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodSettingsButton:Landroid/widget/ImageView;

    const v6, 0x3ecccccd    # 0.4f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 240
    :cond_1
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    .line 241
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 243
    :cond_2
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    .line 244
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mSummaryText:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 246
    :cond_3
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 247
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 249
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->isEnabled()Z

    move-result v1

    .line 251
    .local v1, "enabled":Z
    if-nez v1, :cond_4

    .line 252
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->mInputMethodPref:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 255
    .end local v1    # "enabled":Z
    :cond_4
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodPreference;->updateSummary()V

    .line 256
    return-void

    .line 228
    .end local v0    # "checked":Z
    :cond_5
    invoke-super {p0, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
