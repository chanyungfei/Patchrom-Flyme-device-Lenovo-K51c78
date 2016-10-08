.class Lcom/android/internal/view/menu/MenuPopupHelper$1;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/MenuPopupHelper;->tryShow()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

.field final synthetic val$savedPopup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuPopupHelper;Landroid/widget/ListPopupWindow;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuPopupHelper$1;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    iput-object p2, p0, Lcom/android/internal/view/menu/MenuPopupHelper$1;->val$savedPopup:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$1;->val$savedPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$1;->val$savedPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuPopupHelper$1;->this$0:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 149
    return-void
.end method
