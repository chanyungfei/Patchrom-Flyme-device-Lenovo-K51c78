.class Lcom/android/internal/app/MediaRouteControllerDialog$2;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mIsWfd:Z
    invoke-static {v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$500(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$400(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result v0

    .line 219
    .local v0, "status":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$600(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 228
    .end local v0    # "status":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-virtual {v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->dismiss()V

    .line 229
    return-void

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;
    invoke-static {v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$400(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$2;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    # getter for: Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;
    invoke-static {v1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$600(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method
