.class public final Lcom/flyme/deviceoriginalsettings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;,
        Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;,
        Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL:Ljava/lang/String; = "com.android.credentials.INSTALL"

.field public static final ACTION_RESET:Ljava/lang/String; = "com.android.credentials.RESET"

.field public static final ACTION_UNLOCK:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field private static final CONFIRM_KEY_GUARD_REQUEST:I = 0x1

.field static final MIN_PASSWORD_QUALITY:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "CredentialStorage"


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I

.field private sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

.field private sResetDialog:Landroid/app/AlertDialog;

.field private sUnlockDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    .line 112
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    .line 113
    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    .line 122
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I

    .line 571
    return-void
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    .prologue
    .line 102
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method static synthetic access$602(Lcom/flyme/deviceoriginalsettings/CredentialStorage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;
    .param p1, "x1"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method private checkKeyGuardQuality()Z
    .locals 2

    .prologue
    .line 264
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 265
    .local v0, "quality":I
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard()Z
    .locals 6

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 522
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x1

    const v4, 0x7f0c0a5c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f0c0a5d

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 526
    .local v0, "launched":Z
    return v0
.end method

.method private ensureKeyGuard()V
    .locals 2

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;)V

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->confirmKeyGuard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method private handleUnlockOrInstall()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v0, "CredentialStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keystore state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "CredentialStorage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyGuardQuality "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 207
    goto :goto_1

    .line 216
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    const-string v0, "CredentialStorage"

    const-string v1, "keystore is empty"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 223
    :cond_2
    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->runKeyguardConfirmation(I)Z

    .line 224
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    goto :goto_0

    .line 228
    :pswitch_2
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    new-instance v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;)V

    goto :goto_0

    .line 232
    :cond_3
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->installIfAvailable()V

    .line 233
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    goto/16 :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 14

    .prologue
    const/16 v13, 0x3f2

    const/4 v12, -0x1

    const/4 v9, 0x1

    .line 286
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 287
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 288
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 290
    const-string v10, "install_as_uid"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 292
    .local v7, "uid":I
    const-string v10, "user_private_key_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 293
    const-string v10, "user_private_key_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 294
    .local v6, "key":Ljava/lang/String;
    const-string v10, "user_private_key_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 296
    .local v8, "value":[B
    const/4 v5, 0x1

    .line 297
    .local v5, "flags":I
    if-ne v7, v13, :cond_0

    invoke-direct {p0, v8}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->isHardwareBackedKey([B)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 300
    const-string v10, "CredentialStorage"

    const-string v11, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static {v10, v11}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v5, 0x0

    .line 304
    :cond_0
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10, v6, v8, v7, v5}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v10

    if-nez v10, :cond_2

    .line 305
    const-string v9, "CredentialStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "flags":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "value":[B
    :cond_1
    :goto_0
    return-void

    .line 310
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "uid":I
    :cond_2
    if-ne v7, v13, :cond_3

    const/4 v5, 0x0

    .line 312
    .restart local v5    # "flags":I
    :goto_1
    const-string v10, "user_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 313
    const-string v10, "user_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "certName":Ljava/lang/String;
    const-string v10, "user_certificate_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 316
    .local v3, "certData":[B
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10, v4, v3, v7, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10

    if-nez v10, :cond_4

    .line 317
    const-string v9, "CredentialStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "certData":[B
    .end local v4    # "certName":Ljava/lang/String;
    .end local v5    # "flags":I
    :cond_3
    move v5, v9

    .line 310
    goto :goto_1

    .line 322
    .restart local v5    # "flags":I
    :cond_4
    const-string v10, "ca_certificates_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 323
    const-string v10, "ca_certificates_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "caListName":Ljava/lang/String;
    const-string v10, "ca_certificates_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 326
    .local v1, "caListData":[B
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10, v2, v1, v7, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10

    if-nez v10, :cond_5

    .line 327
    const-string v9, "CredentialStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    .end local v1    # "caListData":[B
    .end local v2    # "caListName":Ljava/lang/String;
    :cond_5
    const-string v10, "wapi_user_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 334
    const-string v10, "wapi_user_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .restart local v2    # "caListName":Ljava/lang/String;
    const-string v10, "wapi_user_certificate_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 336
    .restart local v1    # "caListData":[B
    if-eqz v2, :cond_6

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10, v2, v1, v7, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10

    if-nez v10, :cond_6

    .line 337
    const-string v9, "CredentialStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 342
    .end local v1    # "caListData":[B
    .end local v2    # "caListName":Ljava/lang/String;
    :cond_6
    const-string v10, "wapi_server_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 343
    const-string v10, "wapi_server_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .restart local v2    # "caListName":Ljava/lang/String;
    const-string v10, "wapi_server_certificate_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 347
    .restart local v1    # "caListData":[B
    if-eqz v2, :cond_7

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10, v2, v1, v7, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v9

    if-nez v9, :cond_7

    .line 348
    const-string v9, "CredentialStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    .end local v1    # "caListData":[B
    .end local v2    # "caListName":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v12}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->setResult(I)V

    goto/16 :goto_0
.end method

.method private isHardwareBackedKey([B)Z
    .locals 7
    .param p1, "keyData"    # [B

    .prologue
    .line 270
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    .local v2, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 272
    .local v4, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, "algId":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "algName":Ljava/lang/String;
    invoke-static {v1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 278
    .end local v0    # "algId":Ljava/lang/String;
    .end local v1    # "algName":Ljava/lang/String;
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_0
    return v5

    .line 276
    :catch_0
    move-exception v3

    .line 277
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "CredentialStorage"

    const-string v6, "Failed to parse key data"

    invoke-static {v5, v6}, Lcom/lenovo/xlog/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 558
    const-string v0, "CredentialStorage"

    const-string v1, "runKeyguardConfirmation"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0c079c

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 531
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 536
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 537
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 538
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 541
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 549
    .end local v0    # "password":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const-string v0, "CredentialStorage"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    .line 142
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    .line 143
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    .line 146
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    const-string v0, "com.android.credentials.UNLOCK"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    .line 149
    const-string v0, "CredentialStorage"

    const-string v1, "Finish CredentialStorage when recreate by system"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    .line 153
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    const-string v0, "CredentialStorage"

    const-string v1, "onDestroy, set sConfigureKeyGuardDialog as null"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 180
    const-string v0, "CredentialStorage"

    const-string v1, "sConfigureKeyGuardDialog.dismiss"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 182
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 186
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 190
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    .line 192
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 193
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 159
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 160
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "action":Ljava/lang/String;
    const-string v2, "CredentialStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "com.android.credentials.RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    new-instance v2, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;-><init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;)V

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v2, "com.android.credentials.INSTALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0
.end method
