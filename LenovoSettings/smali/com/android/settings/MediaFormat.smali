.class public Lcom/flyme/deviceoriginalsettings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37

.field private static final TAG:Ljava/lang/String; = "MediaFormat"


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIsInternalSD:Z

.field private mIsUsbStorage:Z

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mVolumeDescription:Ljava/lang/String;

.field private mVolumePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    new-instance v0, Lcom/flyme/deviceoriginalsettings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/MediaFormat$1;-><init>(Lcom/flyme/deviceoriginalsettings/MediaFormat;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 129
    new-instance v0, Lcom/flyme/deviceoriginalsettings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/MediaFormat$2;-><init>(Lcom/flyme/deviceoriginalsettings/MediaFormat;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/MediaFormat;)Landroid/os/storage/StorageVolume;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MediaFormat;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/MediaFormat;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MediaFormat;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/MediaFormat;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/MediaFormat;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 4

    .prologue
    .line 147
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040069

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 151
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0b00b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 153
    .local v0, "finalText":Landroid/widget/TextView;
    const v1, 0x7f0c0338

    const v2, 0x7f0c079a

    invoke-direct {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getUsbString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mFinalView:Landroid/view/View;

    const v2, 0x7f0b00ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 159
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    const v2, 0x7f0c079b

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 162
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .end local v0    # "finalText":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method private establishInitialState()V
    .locals 4

    .prologue
    .line 181
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04006a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 184
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0b00bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    .local v0, "initialText":Landroid/widget/TextView;
    const v1, 0x7f0c0798

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInitialView:Landroid/view/View;

    const v2, 0x7f0b00bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 191
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v2, 0x7f0c0799

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .end local v0    # "initialText":Landroid/widget/TextView;
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 197
    return-void
.end method

.method private getUsbString(II)Ljava/lang/String;
    .locals 1
    .param p1, "usbResId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mIsUsbStorage:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getVolumeString(I)Ljava/lang/String;
    .locals 6
    .param p1, "stringId"    # I

    .prologue
    .line 258
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mIsInternalSD:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mIsUsbStorage:Z

    if-nez v3, :cond_2

    .line 259
    :cond_0
    const-string v3, "MediaFormat"

    const-string v4, "+mVolumeDescription is null or external sd card, use default string"

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_1
    :goto_0
    return-object v1

    .line 263
    :cond_2
    const v3, 0x7f0c0488

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "sdCardString":Ljava/lang/String;
    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdCardString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 271
    const-string v3, "sd"

    const-string v4, "SD"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdCardString"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 274
    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "str"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 277
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SD"

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 278
    const-string v3, "MediaFormat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not replace SD card, Replace SD, str is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 282
    .local v2, "tr":Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    .line 95
    new-instance v0, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0c079c

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0c079d

    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getVolumeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 116
    :cond_2
    if-nez p2, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 201
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 203
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 204
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 205
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 207
    invoke-static {}, Lcom/lenovo/settings/LenovoUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 211
    if-eqz v0, :cond_0

    .line 212
    const-string v1, "volume"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 213
    const-string v1, "IsUsbStorage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mIsUsbStorage:Z

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_1

    .line 217
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    .line 218
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mVolumePath:Ljava/lang/String;

    .line 219
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mIsInternalSD:Z

    .line 232
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    const v1, 0x7f0c0336

    const v2, 0x7f0c0796

    invoke-direct {p0, v1, v2}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getUsbString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->setTitle(Ljava/lang/CharSequence;)V

    .line 236
    const/16 v1, 0x37

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 237
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->establishFinalConfirmationState()V

    .line 240
    :cond_2
    return-void

    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_3
    move v1, v3

    .line 219
    goto :goto_0

    .line 223
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "IsUsbStorage"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mIsUsbStorage:Z

    .line 224
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "storage_volume"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 226
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mVolumeDescription:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mVolumePath:Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/MediaFormat;->mIsInternalSD:Z

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_2
.end method
