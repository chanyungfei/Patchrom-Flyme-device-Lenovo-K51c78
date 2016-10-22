.class public Lcom/flyme/deviceoriginalsettings/ChooseLockPassword;
.super Lcom/flyme/deviceoriginalsettings/SettingsActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/ChooseLockPassword$ChooseLockPasswordFragment;
    }
.end annotation


# static fields
.field public static final PASSWORD_MAX_KEY:Ljava/lang/String; = "lockscreen.password_max"

.field public static final PASSWORD_MIN_KEY:Ljava/lang/String; = "lockscreen.password_min"

.field public static final PASSWORD_MIN_LETTERS_KEY:Ljava/lang/String; = "lockscreen.password_min_letters"

.field public static final PASSWORD_MIN_LOWERCASE_KEY:Ljava/lang/String; = "lockscreen.password_min_lowercase"

.field public static final PASSWORD_MIN_NONLETTER_KEY:Ljava/lang/String; = "lockscreen.password_min_nonletter"

.field public static final PASSWORD_MIN_NUMERIC_KEY:Ljava/lang/String; = "lockscreen.password_min_numeric"

.field public static final PASSWORD_MIN_SYMBOLS_KEY:Ljava/lang/String; = "lockscreen.password_min_symbols"

.field public static final PASSWORD_MIN_UPPERCASE_KEY:Ljava/lang/String; = "lockscreen.password_min_uppercase"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;-><init>()V

    .line 83
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 62
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/flyme/deviceoriginalsettings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 68
    const-class v0, Lcom/flyme/deviceoriginalsettings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v1, 0x7f0c07dd

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 80
    .local v0, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/ChooseLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method
