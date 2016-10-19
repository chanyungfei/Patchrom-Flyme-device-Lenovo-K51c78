.class public Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;
.super Ljava/lang/Object;
.source "RomUI_HookPhoneWindow.java"


# static fields
.field public static final ROMUI_V2_STATUS_FOR_LIGHT_THEME_APP:I = 0x1

.field public static final ROMUI_V2_STATUS_NONE:I

.field private static mRomUI_v3_DefaultPrimaryDark:I

.field private static mRomUI_v3_PrimaryDark:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRomUI_v3_DeviceDefaultLightStatus:I

.field private mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/high16 v0, 0x33000000

    sput v0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_DefaultPrimaryDark:I

    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_PrimaryDark:I

    return-void
.end method

.method public constructor <init>(Landroid/view/Window;Landroid/content/Context;)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_DeviceDefaultLightStatus:I

    .line 31
    iput-object p1, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    .line 32
    iput-object p2, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private isDarkStatusIcon()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 56
    iget-object v9, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getStatusBarColor()I

    move-result v3

    .line 57
    .local v3, "nStatusBarColor":I
    const-string v9, "wangcy9"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current StatusBar\'s color ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v9, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v5

    .line 60
    .local v5, "windowStyle":Landroid/content/res/TypedArray;
    const/4 v9, 0x4

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 62
    .local v2, "isFloating":Z
    const-string v9, "wangcy9"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isFloating="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v9, 0x5

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 66
    .local v4, "windowIsTranslucent":Z
    const-string v9, "wangcy9"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "windowIsTranslucent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/16 v9, 0x9

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 68
    .local v0, "fullScreen":Z
    const-string v9, "wangcy9"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fullScreen="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/16 v9, 0x17

    invoke-virtual {v5, v9, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 73
    .local v6, "windowTranslucentStatus":Z
    const-string v9, "wangcy9"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "windowTranslucentStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v9, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getAppToken()Landroid/os/IBinder;

    move-result-object v9

    if-eqz v9, :cond_1

    move v1, v7

    .line 76
    .local v1, "isAppWindow":Z
    :goto_0
    const-string v9, "wangcy9"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isAppWindow="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v9, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    move v9, v7

    :goto_1
    or-int/2addr v1, v9

    .line 79
    iget-object v9, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, v7}, Landroid/view/Window;->hasFeature(I)Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v7

    :goto_2
    or-int/2addr v1, v9

    .line 81
    iget-object v9, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mContext:Landroid/content/Context;

    const v10, 0x9010001

    invoke-static {v9, v10}, Lcom/lenovo/romui/RomUI;->getDataFromAttribute(Landroid/content/Context;I)I

    move-result v9

    iput v9, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_DeviceDefaultLightStatus:I

    .line 83
    const-string v9, "wangcy9"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mRomUI_v3_DeviceDefaultLightStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_DeviceDefaultLightStatus:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v9, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x907000e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    sput v9, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_PrimaryDark:I

    .line 88
    const-string v10, "wangcy9"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current StatusBar\'s color"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget v9, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_PrimaryDark:I

    if-ne v9, v3, :cond_4

    const-string v9, " not customize"

    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v9, "wangcy9"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sdkTargetVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v9, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_5

    .line 91
    if-nez v2, :cond_0

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    if-nez v6, :cond_0

    if-eqz v1, :cond_0

    iget v9, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_DeviceDefaultLightStatus:I

    if-eqz v9, :cond_0

    sget v9, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_PrimaryDark:I

    if-ne v9, v3, :cond_0

    move v8, v7

    .line 120
    :cond_0
    :goto_4
    return v8

    .end local v1    # "isAppWindow":Z
    :cond_1
    move v1, v8

    .line 75
    goto/16 :goto_0

    .restart local v1    # "isAppWindow":Z
    :cond_2
    move v9, v8

    .line 77
    goto/16 :goto_1

    :cond_3
    move v9, v8

    .line 79
    goto/16 :goto_2

    .line 88
    :cond_4
    const-string v9, "customize"

    goto :goto_3

    .line 105
    :cond_5
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget v9, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_DeviceDefaultLightStatus:I

    if-eqz v9, :cond_0

    sget v9, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_PrimaryDark:I

    if-ne v9, v3, :cond_0

    .line 110
    if-nez v6, :cond_0

    if-nez v4, :cond_0

    .line 112
    iget-object v8, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    invoke-virtual {v8, v7}, Landroid/view/Window;->romUI_setDrawStatusBGFlag(Z)V

    move v8, v7

    .line 113
    goto :goto_4
.end method


# virtual methods
.method public setStatusIcon()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mContext:Landroid/content/Context;

    const v1, 0x9010001

    invoke-static {v0, v1}, Lcom/lenovo/romui/RomUI;->getDataFromAttribute(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_DeviceDefaultLightStatus:I

    .line 39
    iget v0, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mRomUI_v3_DeviceDefaultLightStatus:I

    if-nez v0, :cond_0

    .line 40
    const-string v0, "wangcy9"

    const-string v1, "setStatusIcon occur wrong theme!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->isDarkStatusIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    const-string v0, "wangcy9"

    const-string v1, "setDarkStatusIcon=true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->romUI_setDarkStatusIcon(Z)V

    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "wangcy9"

    const-string v1, "setDarkStatusIcon=false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/lenovo/romui/hook/RomUI_HookPhoneWindow;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->romUI_setDarkStatusIcon(Z)V

    goto :goto_0
.end method
