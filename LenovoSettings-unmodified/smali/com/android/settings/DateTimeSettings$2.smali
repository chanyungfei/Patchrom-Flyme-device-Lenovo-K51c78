.class Lcom/android/settings/DateTimeSettings$2;
.super Landroid/app/TimePickerDialog;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DateTimeSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DateTimeSettings;Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # Z

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$2;->this$0:Lcom/android/settings/DateTimeSettings;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-void
.end method


# virtual methods
.method protected onStop()V
    .locals 0

    .prologue
    .line 627
    return-void
.end method
