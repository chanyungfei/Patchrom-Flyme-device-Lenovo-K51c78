.class Lcom/lenovo/settings/deviceinfo/MemoryExts$4;
.super Ljava/lang/Object;
.source "MemoryExts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/deviceinfo/MemoryExts;->showDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/deviceinfo/MemoryExts;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$4;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 375
    const-string v0, "flyrea"

    const-string v1, "is sd1"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/lenovo/settings/deviceinfo/MemoryExts$4;->this$0:Lcom/lenovo/settings/deviceinfo/MemoryExts;

    const-string v1, "/storage/sdcard1"

    # invokes: Lcom/lenovo/settings/deviceinfo/MemoryExts;->setEmmcDefaultStorage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/lenovo/settings/deviceinfo/MemoryExts;->access$400(Lcom/lenovo/settings/deviceinfo/MemoryExts;Ljava/lang/String;)V

    .line 377
    return-void
.end method
