.class Lcom/lenovo/settings/AboutActivity$4;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/AboutActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/AboutActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/AboutActivity;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lcom/lenovo/settings/AboutActivity$4;->this$0:Lcom/lenovo/settings/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 419
    return-void
.end method
