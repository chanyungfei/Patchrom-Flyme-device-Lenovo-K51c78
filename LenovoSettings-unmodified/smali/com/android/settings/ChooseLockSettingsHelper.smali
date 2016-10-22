.class public final Lcom/android/settings/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# static fields
.field static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field static final EXTRA_KEY_TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 43
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 48
    iput-object p2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 49
    return-void
.end method

.method private confirmPassword(I)Z
    .locals 7
    .param p1, "request"    # I

    .prologue
    const/4 v3, 0x0

    .line 122
    iget-object v4, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    :goto_0
    return v3

    .line 123
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.lenovo.keyguard.settings"

    const-string v6, "com.lenovo.keyguard.settings.KeyguardSettingsActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 127
    .local v2, "keyguardIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "keyguardActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 140
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const-string v3, "com.lenovo.keyguard.settings"

    const-string v4, "com.lenovo.keyguard.settings.ConfirmLockPassword$InternalActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 138
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method

.method private confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 7
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 88
    iget-object v4, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v3

    .line 91
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 94
    const-string v4, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 97
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.lenovo.keyguard.settings"

    const-string v6, "com.lenovo.keyguard.settings.KeyguardSettingsActivity"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 99
    .local v2, "keyguardIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "keyguardActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v3, :cond_3

    .line 109
    iget-object v3, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    :goto_2
    const/4 v3, 0x1

    goto :goto_0

    .line 104
    :cond_2
    const-string v3, "com.lenovo.keyguard.settings"

    const-string v4, "com.lenovo.keyguard.settings.ConfirmLockPattern$InternalActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 111
    :cond_3
    iget-object v3, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2
.end method


# virtual methods
.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "launched":Z
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 77
    :goto_0
    return v0

    .line 66
    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 67
    goto :goto_0

    .line 74
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v0

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
