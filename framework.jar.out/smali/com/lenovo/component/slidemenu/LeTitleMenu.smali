.class public Lcom/lenovo/component/slidemenu/LeTitleMenu;
.super Ljava/lang/Object;
.source "LeTitleMenu.java"


# instance fields
.field private final isUseButton:Z

.field private final isUseSettingButton:Z

.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private final mPopupMenuData:[Ljava/lang/String;

.field private final mSettingClickListener:Landroid/view/View$OnClickListener;

.field private final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mTitle:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-boolean v1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseButton:Z

    .line 26
    iput-boolean v1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseSettingButton:Z

    .line 27
    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mSettingClickListener:Landroid/view/View$OnClickListener;

    .line 28
    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mPopupMenuData:[Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 34
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mTitle:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseButton:Z

    .line 37
    iput-boolean v1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseSettingButton:Z

    .line 38
    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mSettingClickListener:Landroid/view/View$OnClickListener;

    .line 39
    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mPopupMenuData:[Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "settingClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mTitle:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 57
    iput-object p3, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mSettingClickListener:Landroid/view/View$OnClickListener;

    .line 59
    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseButton:Z

    .line 60
    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseSettingButton:Z

    .line 61
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mPopupMenuData:[Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;[Ljava/lang/String;Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "popupMenuData"    # [Ljava/lang/String;
    .param p4, "itemClickListener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mTitle:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 80
    iput-object p3, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mPopupMenuData:[Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseButton:Z

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseSettingButton:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mSettingClickListener:Landroid/view/View$OnClickListener;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "settingClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mTitle:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mSettingClickListener:Landroid/view/View$OnClickListener;

    .line 47
    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 48
    iput-boolean v1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseButton:Z

    .line 49
    iput-boolean v1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseSettingButton:Z

    .line 50
    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mPopupMenuData:[Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "popupMenuData"    # [Ljava/lang/String;
    .param p3, "itemClickListener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mTitle:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mPopupMenuData:[Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 70
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseButton:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseSettingButton:Z

    .line 73
    iput-object v1, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mSettingClickListener:Landroid/view/View$OnClickListener;

    .line 74
    return-void
.end method


# virtual methods
.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPopupMenuData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mPopupMenuData:[Ljava/lang/String;

    return-object v0
.end method

.method public getSettingClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mSettingClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getmItemClickListener()Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->mItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-object v0
.end method

.method public isUseButton()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseButton:Z

    return v0
.end method

.method public isUseSettingButton()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/lenovo/component/slidemenu/LeTitleMenu;->isUseSettingButton:Z

    return v0
.end method
