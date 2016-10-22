.class Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference$1;
.super Landroid/text/style/ClickableSpan;
.source "UsbModePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->setSummary(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference$1;->this$0:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 109
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference$1;->this$0:Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;

    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/lenovousb/UsbModePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c027d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c027e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 114
    return-void
.end method
