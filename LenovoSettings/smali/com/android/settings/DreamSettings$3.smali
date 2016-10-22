.class Lcom/flyme/deviceoriginalsettings/DreamSettings$3;
.super Ljava/lang/Object;
.source "DreamSettings.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/DreamSettings;->createMenuItem(Landroid/view/Menu;IIIZLjava/lang/Runnable;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

.field final synthetic val$onClick:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/DreamSettings;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$3;->this$0:Lcom/flyme/deviceoriginalsettings/DreamSettings;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$3;->val$onClick:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/DreamSettings$3;->val$onClick:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 203
    const/4 v0, 0x1

    return v0
.end method
