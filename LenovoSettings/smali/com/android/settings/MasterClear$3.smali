.class Lcom/flyme/deviceoriginalsettings/MasterClear$3;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/MasterClear;->establishInitialState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/MasterClear;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$3;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/MasterClear$3;->this$0:Lcom/flyme/deviceoriginalsettings/MasterClear;

    # getter for: Lcom/flyme/deviceoriginalsettings/MasterClear;->mCheckBackup:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/MasterClear;->access$500(Lcom/flyme/deviceoriginalsettings/MasterClear;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 277
    return-void
.end method
