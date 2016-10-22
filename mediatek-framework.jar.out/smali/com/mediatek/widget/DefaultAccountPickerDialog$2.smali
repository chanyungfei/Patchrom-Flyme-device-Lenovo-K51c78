.class Lcom/mediatek/widget/DefaultAccountPickerDialog$2;
.super Ljava/lang/Object;
.source "DefaultAccountPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/widget/DefaultAccountPickerDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/DefaultAccountPickerDialog;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/widget/DefaultAccountPickerDialog$2;->this$0:Lcom/mediatek/widget/DefaultAccountPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 91
    # getter for: Lcom/mediatek/widget/DefaultAccountPickerDialog;->sAdapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;
    invoke-static {}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->access$100()Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    move-result-object v0

    # getter for: Lcom/mediatek/widget/DefaultAccountPickerDialog;->sOldSelection:I
    invoke-static {}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->setActiveStatus(I)V

    .line 92
    # getter for: Lcom/mediatek/widget/DefaultAccountPickerDialog;->sAdapter:Lcom/mediatek/widget/DefaultAccountPickerAdapter;
    invoke-static {}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->access$100()Lcom/mediatek/widget/DefaultAccountPickerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/widget/DefaultAccountPickerAdapter;->notifyDataSetChanged()V

    .line 94
    const-string v0, "DefaultAccountPickerDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " old select position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/mediatek/widget/DefaultAccountPickerDialog;->sOldSelection:I
    invoke-static {}, Lcom/mediatek/widget/DefaultAccountPickerDialog;->access$000()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 97
    return-void
.end method
