.class public Lcom/lenovo/component/slidemenu/LeLoginMenu;
.super Ljava/lang/Object;
.source "LeLoginMenu.java"


# instance fields
.field private final isUseSettingButton:Z

.field private final mAccount:Ljava/lang/String;

.field private final mAccountClickListener:Landroid/view/View$OnClickListener;

.field private final mAvatarIcon:Landroid/graphics/drawable/Drawable;

.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private final mPopupMenuData:[Ljava/lang/String;

.field private final mSettingClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "avatarIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "accountClickListner"    # Landroid/view/View$OnClickListener;
    .param p5, "settingClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mAvatarIcon:Landroid/graphics/drawable/Drawable;

    .line 38
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object p3, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mAccount:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mAccountClickListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p5, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mSettingClickListener:Landroid/view/View$OnClickListener;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->isUseSettingButton:Z

    .line 44
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mPopupMenuData:[Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;[Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 1
    .param p1, "avatarIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "popupMenuData"    # [Ljava/lang/String;
    .param p5, "accountClickListner"    # Landroid/view/View$OnClickListener;
    .param p6, "itemClickListener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mAvatarIcon:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-object p3, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mAccount:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mPopupMenuData:[Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mAccountClickListener:Landroid/view/View$OnClickListener;

    .line 71
    iput-object p6, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->isUseSettingButton:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mSettingClickListener:Landroid/view/View$OnClickListener;

    .line 75
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mAccountClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getAvatarIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mAvatarIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPopupMenuData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mPopupMenuData:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mSettingClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getmItemClickListener()Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-object v0
.end method

.method public isUseSettingButton()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeLoginMenu;->isUseSettingButton:Z

    return v0
.end method
