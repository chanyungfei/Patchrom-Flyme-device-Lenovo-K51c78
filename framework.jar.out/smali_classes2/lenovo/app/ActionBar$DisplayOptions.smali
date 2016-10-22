.class public interface abstract annotation Llenovo/app/ActionBar$DisplayOptions;
.super Ljava/lang/Object;
.source "ActionBar.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llenovo/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "DisplayOptions"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation build Llenovo/annotation/IntDef;
    flag = true
    value = {
        0x1L,
        0x2L,
        0x4L,
        0x8L,
        0x10L
    }
.end annotation
