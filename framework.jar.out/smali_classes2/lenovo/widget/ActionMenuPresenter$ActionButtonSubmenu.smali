.class Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/lenovo/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Lcom/lenovo/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Llenovo/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Llenovo/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/lenovo/internal/view/menu/SubMenuBuilder;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 819
    iput-object p1, p0, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Llenovo/widget/ActionMenuPresenter;

    .line 823
    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    const v5, 0x1010444

    :goto_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 825
    iput-object p3, p0, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->mSubMenu:Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .line 827
    invoke-virtual {p3}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v9

    check-cast v9, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 828
    .local v9, "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    invoke-virtual {v9}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    # getter for: Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Llenovo/widget/ActionMenuPresenter;->access$600(Llenovo/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    # getter for: Llenovo/widget/ActionMenuPresenter;->mMenuView:Lcom/lenovo/internal/view/menu/MenuView;
    invoke-static {p1}, Llenovo/widget/ActionMenuPresenter;->access$700(Llenovo/widget/ActionMenuPresenter;)Lcom/lenovo/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 833
    :cond_0
    iget-object v0, p1, Llenovo/widget/ActionMenuPresenter;->mPopupPresenterCallback:Llenovo/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 835
    const/4 v10, 0x0

    .line 836
    .local v10, "preserveIconSpacing":Z
    invoke-virtual {p3}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->size()I

    move-result v7

    .line 837
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v7, :cond_1

    .line 838
    invoke-virtual {p3, v8}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 839
    .local v6, "childItem":Landroid/view/MenuItem;
    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 840
    const/4 v10, 0x1

    .line 844
    .end local v6    # "childItem":Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {p0, v10}, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 845
    return-void

    .line 823
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v9    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    .end local v10    # "preserveIconSpacing":Z
    :cond_2
    const v5, 0x1010300

    goto :goto_0

    .line 830
    .restart local v9    # "item":Lcom/lenovo/internal/view/menu/MenuItemImpl;
    :cond_3
    # getter for: Llenovo/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Llenovo/widget/ActionMenuPresenter;->access$600(Llenovo/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 837
    .restart local v6    # "childItem":Landroid/view/MenuItem;
    .restart local v7    # "count":I
    .restart local v8    # "i":I
    .restart local v10    # "preserveIconSpacing":Z
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 849
    invoke-super {p0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 850
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Llenovo/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Llenovo/widget/ActionMenuPresenter;->mActionButtonPopup:Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0, v1}, Llenovo/widget/ActionMenuPresenter;->access$802(Llenovo/widget/ActionMenuPresenter;Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;)Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 851
    iget-object v0, p0, Llenovo/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Llenovo/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Llenovo/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 852
    return-void
.end method
